import 'package:flutter/material.dart';
import 'package:speeder_website/home_page_body/CreativePage_structure/dextop.dart';
import 'package:speeder_website/home_page_body/CreativePage_structure/mobile.dart';
import 'package:speeder_website/home_page_body/CreativePage_structure/tablet.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';

class CreativeView extends StatefulWidget {
  const CreativeView({super.key});

  @override
  State<CreativeView> createState() => _CreativeViewState();
}

class _CreativeViewState extends State<CreativeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: CreativeMobile(),
        desktopBody: CreativePage(),
        tabletBody: CreativeTablet());
  }
}
