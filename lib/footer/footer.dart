import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<StatefulWidget> createState() {
    return FooterState();
  }
}

class FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("Footer")],
    );
  }
}
