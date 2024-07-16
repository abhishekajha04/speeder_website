import 'package:flutter/material.dart';
import 'package:speeder_website/utills/common_widget.dart';
import 'package:speeder_website/utills/consts.dart';
import 'package:speeder_website/utills/utils.dart';

class WhatWeDoingWidget extends StatefulWidget {
  const WhatWeDoingWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return WhatWeDoingWidgetState();
  }
}

class WhatWeDoingWidgetState extends State<WhatWeDoingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "WHAT WE ARE DOING",
          style: TextStyle(
              fontFamily: "BebasNeue",
              fontWeight: FontWeight.w600,
              fontSize: 36),
        ),
        Container(
            margin: const EdgeInsets.only(top: 10),
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Text(
              whatAreWeDoingText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            )),
        const SizedBox(height: 50),
        const OurWorksWidget()
      ],
    );
  }
}

class OurWorksWidget extends StatefulWidget {
  const OurWorksWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return OurWorksWidgetState();
  }
}

class OurWorksWidgetState extends State<OurWorksWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        worksWidget("assets/images/img1.png", "Performance Marketing",
            whatWeDoingContent),
        const SizedBox(width: 25),
        worksWidget("assets/images/img2.png", "Web Design & Development",
            whatWeDoingContent),
        const SizedBox(width: 25),
        worksWidget("assets/images/img3.png", "Social Media Marketing",
            whatWeDoingContent),
      ],
    );
  }

  Widget worksWidget(String image, String topic, String description) {
    return HoverWidget(builder: ((isHovered) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: isHovered ? Colors.grey.withOpacity(0.2) : Colors.transparent,
        ),
        child: PhysicalModel(
          color: Colors.transparent,
          elevation: isHovered ? 25 : 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 400,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: isHovered ? Colors.white : hexToColor("#DDDDDD")),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Container(
                  height: 115,
                  width: 115,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img4.png"),
                      fit: BoxFit
                          .cover, // This will ensure the image covers the entire container
                    ),
                  ),
                  child: Center(
                      child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: isHovered
                          ? hexToColor("#002366")
                          : hexToColor("#B5C7FD"),
                    ),
                    child: Center(
                      child: Image.asset(image),
                    ),
                  )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  topic,
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 25,
                ),
                menuHowerButton("View More", isHovered),
              ],
            ),
          ),
        ),
      );
    }));
  }

  Widget menuHowerButton(String label, bool isHovered) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color:
                    isHovered ? hexToColor("#002366") : hexToColor("#746E6E")),
            color: isHovered ? hexToColor("#002366") : Colors.white,
          ),
          height: 40,
          width: 120,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isHovered ? Colors.white : hexToColor("#746E6E"),
                fontFamily: "Montserrat",
              ),
            ),
          )),
    );
  }
}
