import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeaderState();
  }
}

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Heder"),
        Image.asset(
          "assets/images/logo.png",
          width: 150,
        )
      ],
    );
  }
}
