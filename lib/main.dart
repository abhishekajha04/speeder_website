import 'package:flutter/material.dart';
import 'package:speeder_website/home_page/homepage.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: hexToColor("#002366")),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}
