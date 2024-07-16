import 'package:flutter/material.dart';
import 'package:speeder_website/header/header.dart';
import 'package:speeder_website/home_page_body/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
                child: SingleChildScrollView(
              child: HomePageBody(),
            ))
            // Expanded(
            //   child: WebScroll(
            //     controller: _scrollController,
            //     child: SingleChildScrollView(
            //       physics: const NeverScrollableScrollPhysics(),
            //       controller: _scrollController,
            //       child: const HomePageBody(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
