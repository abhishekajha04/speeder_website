import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageBodyState();
  }
}

class HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("Body")],
    );
  }
}
