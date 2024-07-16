import 'package:flutter/material.dart';
import 'package:speeder_website/home_page_body/hero_section.dart';
import 'package:speeder_website/home_page_body/portfolio_home_page.dart';
import 'package:speeder_website/home_page_body/whatwedoing.dart';

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
    return Column(
      children: [
        HomePageHeroSection(),
        WhatWeDoingWidget(),
        PortfolioHomeWidget()
      ],

      // [
      //   HomePageHeroSection(),
      //   WhatWeDoingWidget(),
      //   PortfolioHomeWidget()
      // ],
    );
  }
}
