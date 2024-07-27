import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:speeder_website/header/header.dart';
import 'package:speeder_website/responsive/responsive.dart';
import 'package:speeder_website/utills/consts.dart';
import 'package:speeder_website/utills/utils.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<StatefulWidget> createState() {
    return AboutUsState();
  }
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Header(),
          if (Responsive.isDesktop(context)) const WebViewAboutUs(),
          if (!Responsive.isDesktop(context))
            const Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: MobViewAboutUs(),
              ),
            )
        ],
      )),
    );
  }
}

class WebViewAboutUs extends StatefulWidget {
  const WebViewAboutUs({super.key});

  @override
  State<StatefulWidget> createState() {
    return WebViewAboutUsState();
  }
}

class WebViewAboutUsState extends State<WebViewAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 75, 100, 0),
          child: Column(
            children: [
              Text(
                aboutSpeeder,
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: "Montserrat",
                    color: hexToColor("#212C62")),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: const Text(
                    aboutSpeederDescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontFamily: "Montserrat"),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 1800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Mission",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Montserrat",
                          color: hexToColor("#212C62")),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobViewAboutUs extends StatefulWidget {
  const MobViewAboutUs({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobViewAboutUsState();
  }
}

class MobViewAboutUsState extends State<MobViewAboutUs> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      aboutSpeeder,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          color: hexToColor("#212C62")),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      aboutSpeederDescription,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13, fontFamily: "Montserrat"),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Our Mission",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          color: hexToColor("#212C62")),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    imageContainer(0),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      ourMissionDescription,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Founder & CEO",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          color: hexToColor("#212C62")),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    imageContainer(0),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      founderDescription,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13,
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
              width: double.infinity,
              color: hexToColor("#F8F8FA"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Us Speeder Creatives ",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: "Montserrat",
                        color: hexToColor("#212C62")),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    aboutUsSpeederCreative,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageContainer(int i) {
  return Container(
    constraints: const BoxConstraints(maxWidth: 400),
    child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 150),
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: hexToColor("#002366"),
          ),
        ),
        Container(
          margin: i == 0
              ? const EdgeInsets.only(right: 35)
              : const EdgeInsets.only(left: 35),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: hexToColor("#D9D9D9"),
          ),
        ),
      ],
    ),
  );
}
