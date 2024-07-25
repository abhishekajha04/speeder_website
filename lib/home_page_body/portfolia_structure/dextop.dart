// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:speeder_website/utills/utils.dart';

class ScrollPart extends StatefulWidget {
  const ScrollPart({super.key});

  @override
  State<ScrollPart> createState() => _ScrollPartState();
}

class _ScrollPartState extends State<ScrollPart> {
  final myitems = [
    Image.asset('assets/images/pc1.png'),
    Image.asset('assets/images/pc2.png'),
    Image.asset('assets/images/pc3.png'),
    Image.asset('assets/images/pc4.png'),
    Image.asset('assets/images/pc5.png'),
    Image.asset('assets/images/pc6.png'),
    Image.asset('assets/images/pc7.png'),
    Image.asset('assets/images/pc8.png'),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1200,
          child: Stack(children: [
            Positioned.fill(
              top: 400,
              child: Container(
                color: hexToColor('#F3F8FF'), // Color for the top half
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 250, 0, 0),
                              child: Image.asset(
                                'assets/images/lady.png',
                                height: 423,
                                width: 670,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(120, 230, 0, 0),
                            child: Container(
                              height: 470,
                              width: 500,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 84),
                                    child: Text(
                                      'WORLD - CLASS CUSTOMER SUPPORT',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          color: hexToColor('#002366')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text.rich(TextSpan(
                                      text: 'Our ',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'Poppins',
                                          color: hexToColor('#000000')),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'free trial support ',
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontFamily: 'Poppins',
                                            color: hexToColor('#002366'),
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: hexToColor(
                                                '#002366'), // Specify the underline color here
                                            decorationStyle:
                                                TextDecorationStyle.solid,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'is ',
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontFamily: 'Poppins',
                                              color: hexToColor('#000000')),
                                        )
                                      ])),
                                  Text(
                                    'better than your paid support ',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontFamily: 'Montserrat-Medium',
                                        color: hexToColor('#000000')),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 370,
                                    child: Text(
                                      'We redefine success with bespoke services, from eye-catching web design to strategic social campaigns. Dive into innovation, choose Creative Sharks for a digital presence that stands out.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: hexToColor('#002366')),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: hexToColor('#002366'),
                                        ),
                                        height: 49,
                                        width: 170,
                                        child: Center(
                                          child: Text(
                                            'Let’s Talk',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: hexToColor('#002366'))),
                                        height: 49,
                                        width: 170,
                                        child: Center(
                                          child: Text(
                                            'Free consultant ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Montserrat',
                                                color: hexToColor('#002366')),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
              bottom: 800,
              child: Container(
                color: Color.fromARGB(
                    255, 245, 237, 184), // Color for the bottom half
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        'Our portfolio',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Montserrat-SemiBold',
                            color: hexToColor('#212C62')),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 800,
                      child: Text(
                          'Discover Speeder Creative’ standout portfolio showcasing web design, Unique Creatives, Reels, Videos, Engagement Ratio. Choose innovation, choose us.',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              color: hexToColor('#343030'))),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  initialPage:
                      0, // Set the initial page index to 0 (first image)
                  viewportFraction: 1 / 3.0,
                  height: 400,

                  autoPlayAnimationDuration: const Duration(milliseconds: 200),
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  aspectRatio: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
