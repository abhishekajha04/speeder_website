import 'package:flutter/material.dart';
import 'package:speeder_website/our_service/responsive_structure/dextop_page.dart';
import 'package:speeder_website/our_service/responsive_structure/tablet_page.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';
import 'package:speeder_website/our_service/responsive_structure/mobile_page.dart';

class OurServiceMain extends StatefulWidget {
  const OurServiceMain({super.key});

  @override
  State<OurServiceMain> createState() => _OurServiceMainState();
}

class _OurServiceMainState extends State<OurServiceMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: const OurServiceMobileView(),
        desktopBody: const OurService(),
        tabletBody: const TabletBody());
  }
}
