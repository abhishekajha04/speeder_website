// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:speeder_website/our_service/responsive_structure/footer_data.dart';
import 'package:speeder_website/utills/utils.dart';
//import 'package:speeder_website/header/header.dart';

class OurServiceMobileView extends StatefulWidget {
  const OurServiceMobileView({super.key});

  @override
  State<OurServiceMobileView> createState() => _OurServiceMobileViewState();
}

class _OurServiceMobileViewState extends State<OurServiceMobileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              //WebViewHeader(),
              BriefInfo(),
              Gridbox(),
              FooterMain()
            ],
          ),
        ),
      ),
    );
  }
}

class BriefInfo extends StatefulWidget {
  const BriefInfo({super.key});

  @override
  State<BriefInfo> createState() => _BriefInfoState();
}

class _BriefInfoState extends State<BriefInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "OUR SERVICE",
                  style: TextStyle(fontSize: 30, color: hexToColor("#212C62")),
                ),
              ),
              Container(
                  child: Text(
                "Dive into unparalleled creativity and technical prowess at Speeder Creatives. Our expertise combines innovative design, advanced coding, and mastery of the latest technologies. From crafting stunning websites to pioneering AI solutions, our talented team excels at transforming ideas into extraordinary digital realities. We're not just developers; we're digital artisans sculpting immersive experiences. With Speeder Creatives, your digital journey is guided by experts who redefine possibilities. Elevate your online presence with our expertise—where creativity meets the cutting edge. Your vision, our expertise—let's make waves together.",
                style: TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
              ))
            ],
          ),
        )
      ],
    );
  }
}

final List<Map<String, dynamic>> gridMap = [
  {
    "title": "Social Media Marketing",
    "a": "Learn More",
    "description":
        "Performance marketing at Speeder Creatives optimizes strategies for efficient, measurable results, enhancing ROI through meticulous data-driven insights in the dynamic digital landscape.",
    "image": "assets/images/1.png"
  },
  {
    "title": "Website Development",
    "a": "Learn More",
    "description":
        "Website development at Speeder Creatives seamlessly blends design and functionality to craft user-friendly, high-performing sites. Our approach enhances digital presence and achieves key business objectives with precision and innovation.",
    "image": "assets/images/2.png"
  },
  {
    "title": "E-Commerce Solution",
    "a": "Learn More",
    "description":
        "At Speeder Creatives, our E-Commerce Solutions optimize online businesses, ensuring seamless transactions and enhancing customer experiences to foster sustained growth and success.",
    "image": "assets/images/3.png"
  },
  {
    "title": "Graphic Design",
    "a": "Learn More",
    "description":
        "Graphic design merges creativity and strategy to visually communicate ideas, ensuring effective and aesthetic message delivery.",
    "image": "assets/images/4.png"
  },
  {
    "title": "UI/UX",
    "a": "Learn More",
    "description":
        "UI/UX Design harmonizes user-centricity with intuitive functionality, crafting seamless digital experiences that captivate and delight. ",
    "image": "assets/images/5.png"
  },
  {
    "title": "Full API Integration",
    "a": "Learn More",
    "description":
        "Full API Integration optimizes data flow, seamlessly connecting systems to boost functionality, efficiency, and synchronize operations effectively.",
    "image": "assets/images/6.png"
  },
  {
    "title": "Business Development",
    "a": "Learn More",
    "description":
        "Business Development drives growth by cultivating strategic partnerships and implementing initiatives to ensure sustained success and expand market presence effectively. ",
    "image": "assets/images/7.png"
  },
  {
    "title": "Content Writing",
    "a": "Learn More",
    "description":
        "Content writing strategically communicates messages, blending creativity and precision to engage audiences effectively and achieve specific communication goals.",
    "image": "assets/images/8.png"
  },
  {
    "title": "Influencer Marketing",
    "a": "Learn More",
    "description":
        "Smart Budgeting strategically optimizes financial resources by allocating funds to maximize efficiency and achieve targeted goals effectively.",
    "image": "assets/images/9.png"
  },
  {
    "title": "Google Adword ",
    "a": "Learn More",
    "description":
        "Business Development drives growth by cultivating strategic partnerships and implementing initiatives to ensure sustained success and expand market presence effectively.",
    "image": "assets/images/10.png"
  },
  {
    "title": "Searche Engine Optimisation",
    "a": "Learn More",
    "description":
        "Content writing strategically communicates messages, blending creativity and precision to engage audiences effectively and achieve specific communication goals.",
    "image": "assets/images/11.png"
  },
  {
    "title": "Video Editing",
    "a": "Learn More",
    "description":
        "Smart Budgeting strategically optimizes financial resources by allocating funds to maximize efficiency and achieve targeted goals effectively.",
    "image": "assets/images/12.png"
  }
];

class Gridbox extends StatefulWidget {
  const Gridbox({super.key});

  @override
  State<Gridbox> createState() => _GridboxState();
}

class _GridboxState extends State<Gridbox> {
  int _hoverIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
            itemCount: gridMap.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoverIndex = index;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _hoverIndex = -1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: _hoverIndex == index
                            ? Border.all(color: Colors.black, width: 1)
                            : Border.all(
                                color: Colors.black,
                                width: .5,
                              ),
                        boxShadow: _hoverIndex == index
                            ? [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 20,
                                  offset: Offset(
                                    20,
                                    20,
                                  ),
                                ),
                              ]
                            : [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.network(
                                "${gridMap.elementAt(index)['image']}",
                                height: 80,
                                width: 80,
                              ),
                            ),
                            Text(
                              "${gridMap.elementAt(index)['title']}",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "${gridMap.elementAt(index)['description']}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Text(
                              "${gridMap.elementAt(index)['a']}",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
