// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class FooterMain extends StatefulWidget {
  const FooterMain({super.key});

  @override
  State<FooterMain> createState() => _FooterMainState();
}

class _FooterMainState extends State<FooterMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: hexToColor("#002366"),
        height: 306,
        width: double.infinity,
      ),
      Positioned(
        top: 50,
        bottom: 50,
        right: 200,
        left: 200,
        child: Container(
          color: Colors.red,
          height: 204,
          width: 1118,
        ),
      )
    ]);
  }
}
