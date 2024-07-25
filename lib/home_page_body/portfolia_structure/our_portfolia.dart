import 'package:flutter/material.dart';
import 'package:speeder_website/home_page_body/portfolia_structure/dextop.dart';
import 'package:speeder_website/home_page_body/portfolia_structure/mobile.dart';
import 'package:speeder_website/home_page_body/portfolia_structure/tablet.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';

class OurportfolioView extends StatefulWidget {
  const OurportfolioView({super.key});

  @override
  State<OurportfolioView> createState() => _OurportfolioViewState();
}

class _OurportfolioViewState extends State<OurportfolioView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: PortfolioMobile(),
        desktopBody: ScrollPart(),
        tabletBody: PortfolioTablet());
  }
}
