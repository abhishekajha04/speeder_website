import 'package:flutter/material.dart';
import 'package:speeder_website/contactus_page/dextop.dart';
import 'package:speeder_website/contactus_page/mobile.dart';
import 'package:speeder_website/contactus_page/tablet.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/mobile.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';

class ContactUsView2 extends StatefulWidget {
  const ContactUsView2({super.key});

  @override
  State<ContactUsView2> createState() => _ContactUsView2State();
}

class _ContactUsView2State extends State<ContactUsView2> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: ContactMobile2(),
        desktopBody: ContactDextop(),
        tabletBody: ContactTablet());
  }
}
