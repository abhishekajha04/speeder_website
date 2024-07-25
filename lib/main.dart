// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speeder_website/contactus_page/contactus_structure.dart';
import 'package:speeder_website/home_page/homepage.dart';
import 'package:speeder_website/home_page_body/CreativePage_structure/dextop.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/contact_us.dart';
import 'package:speeder_website/home_page_body/conatact_us_structure/daxtop.dart';
import 'package:speeder_website/home_page_body/CreativePage_structure/craeative.dart';
import 'package:speeder_website/home_page_body/featuresbody.dart/features_section.dart';
import 'package:speeder_website/home_page_body/portfolia_structure/dextop.dart';
import 'package:speeder_website/home_page_body/portfolia_structure/our_portfolia.dart';
import 'package:speeder_website/our_service/our_sevice.dart';
import 'package:speeder_website/our_service/responsive_structure/footer_data.dart';
import 'package:speeder_website/utills/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speeder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: hexToColor("#002366")),
        useMaterial3: true,
      ),
      home: //const HomePage()
          // const OurServiceMain()
          //const FeaturesSection()
          //const ScrollPart()
          // ContactUs()

          Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FeaturesSectionView(),
              CreativeView(),
              SizedBox(
                height: 40,
              ),
              OurportfolioView(),
              ContatctView(),
              SizedBox(
                height: 40,
              ),
              FooterMobile2()
            ],
          ),
        ),
      ),
    );
  }
}
