// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;

  final Widget desktopBody;
  final Widget tabletBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return (LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 950) {
          return mobileBody;
        } else if (constraints.maxWidth < 600) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    ));
  }
}
