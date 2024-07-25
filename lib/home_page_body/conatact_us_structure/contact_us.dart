import 'package:flutter/material.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/daxtop.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/mobile.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/tablet.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';

class ContatctView extends StatefulWidget {
  const ContatctView({super.key});

  @override
  State<ContatctView> createState() => _ContatctViewState();
}

class _ContatctViewState extends State<ContatctView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: ContactMobile(),
        desktopBody: ContactUs(),
        tabletBody: ContactTablet());
  }
}
