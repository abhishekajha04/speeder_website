import 'package:flutter/material.dart';
import 'package:speeder_website/footer/footer.dart';
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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [Header(), HomePageBody(), Footer()],
      )),
    );
  }
}
