import 'package:flutter/material.dart';
import 'package:speeder_website/home_page_body/featuresbody.dart/dextop.dart';
import 'package:speeder_website/home_page_body/featuresbody.dart/mobile.dart';
import 'package:speeder_website/home_page_body/featuresbody.dart/tablet.dart';
import 'package:speeder_website/our_service/responsive_structure/responsive_layout.dart';

class FeaturesSectionView extends StatefulWidget {
  const FeaturesSectionView({super.key});

  @override
  State<FeaturesSectionView> createState() => _FeaturesSectionViewState();
}

class _FeaturesSectionViewState extends State<FeaturesSectionView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: FeatureMobile(),
        desktopBody: FeaturesSection(),
        tabletBody: FeatureTablet());
  }
}
