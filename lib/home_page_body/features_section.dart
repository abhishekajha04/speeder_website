// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FeaturesSection extends StatefulWidget {
  const FeaturesSection({super.key});

  @override
  State<FeaturesSection> createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends State<FeaturesSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextWiget(),
        ],
      ),
    );
  }
}

class TextWiget extends StatefulWidget {
  const TextWiget({super.key});

  @override
  State<TextWiget> createState() => _TextWigetState();
}

class _TextWigetState extends State<TextWiget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Features")],
    );
  }
}
