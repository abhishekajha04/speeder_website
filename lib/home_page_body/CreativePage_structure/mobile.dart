// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class CreativeMobile extends StatefulWidget {
  const CreativeMobile({super.key});

  @override
  State<CreativeMobile> createState() => _CreativeMobileState();
}

class _CreativeMobileState extends State<CreativeMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WidgetView1(),
          WidgetView2(),
        ],
      ),
    );
  }
}

class WidgetView1 extends StatefulWidget {
  const WidgetView1({super.key});

  @override
  State<WidgetView1> createState() => _WidgetView1State();
}

class _WidgetView1State extends State<WidgetView1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
      child: Container(
        height: 260,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What We Do',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Medium',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    Text(
                      'Driving a better way of doing marketing',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Medium',
                          fontSize: 30,
                          color: hexToColor('#212C62')),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Learn More',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 420,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'We deliver business impact through PR & marketing with a combination of intellectual curiosity, industry experience, urgency, and precision.',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WidgetView2 extends StatefulWidget {
  const WidgetView2({super.key});

  @override
  State<WidgetView2> createState() => _WidgetView2State();
}

class _WidgetView2State extends State<WidgetView2>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _showBrandDetails = false;
  bool _showSocialMediaManagement = false;
  bool _showApplicationDevelopment = false;
  bool _showFreeService = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1810,
          child: Expanded(
            child: Container(
              child: Stack(children: [
                Positioned.fill(
                  top: 500,
                  child: Container(
                    color: hexToColor('#F3F8FF'), // Color for the top half
                    child: Column(
                      children: [
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Expanded(
                    child: Positioned(
                      top: 2,

                      // Adjust position to fit your design
                      height: 998, // Height of the middle container
                      left: 53,
                      right: 53,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showBrandDetails = false;
                            _showSocialMediaManagement = false;
                            _showApplicationDevelopment = false;
                            _showFreeService = false;
                            // Show details on tap
                          });
                        },
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              _isHovered = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              _isHovered = false;
                            });
                          },
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(80),
                                color: hexToColor('#212C62'),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 30, 30, 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _showBrandDetails = true;
                                          _showSocialMediaManagement = false;
                                          _showApplicationDevelopment = false;
                                          _showFreeService = false;
                                        });
                                      },
                                      child: Text(
                                        'branding',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _showBrandDetails = false;
                                          _showSocialMediaManagement = true;
                                          _showApplicationDevelopment = false;
                                          _showFreeService = false;
                                        });
                                      },
                                      child: Text(
                                        'socialMediaManagement',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _showBrandDetails = false;
                                          _showSocialMediaManagement = false;
                                          _showApplicationDevelopment = true;
                                          _showFreeService = false;
                                        });
                                      },
                                      child: Text(
                                        'Application Development',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _showBrandDetails = false;
                                          _showSocialMediaManagement = false;
                                          _showApplicationDevelopment = false;
                                          _showFreeService = true;
                                        });
                                      },
                                      child: Text(
                                        'Free Service',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 50, // Adjust position within the middle container

                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: hexToColor('#F3F8FF'),
                      ),
                      width: 400,
                      height: 800,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  if (_showBrandDetails) // Conditionally show details
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 50, 20, 20),
                                          child: Expanded(
                                            child: Expanded(
                                              child: Container(
                                                height: 300,
                                                width: 350,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Crafting Your Brands UniqueIdentity with Care and Expertise.',
                                                      style: TextStyle(
                                                          color: hexToColor(
                                                              '#212C62'),
                                                          fontFamily:
                                                              'Montserrat-Medium',
                                                          fontSize: 19),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  90, 0, 0, 0),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/tick.png',
                                                                height: 18,
                                                                width: 18,
                                                              ),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Text(
                                                                'Logo Design',
                                                                style: TextStyle(
                                                                    color: hexToColor(
                                                                        '#212C62'),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  90, 0, 0, 0),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/tick.png',
                                                                height: 18,
                                                                width: 18,
                                                              ),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Text(
                                                                'Logo Design',
                                                                style: TextStyle(
                                                                    color: hexToColor(
                                                                        '#212C62'),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  90, 0, 0, 0),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/tick.png',
                                                                height: 18,
                                                                width: 18,
                                                              ),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Text(
                                                                'Logo Design',
                                                                style: TextStyle(
                                                                    color: hexToColor(
                                                                        '#212C62'),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  90, 0, 0, 0),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/tick.png',
                                                                height: 18,
                                                                width: 18,
                                                              ),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Text(
                                                                'Logo Design',
                                                                style: TextStyle(
                                                                    color: hexToColor(
                                                                        '#212C62'),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  90, 0, 0, 0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'Learn More',
                                                                style: TextStyle(
                                                                    color: hexToColor(
                                                                        '#212C62'),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: 400,
                                                  width: 300,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.5), // Color of the shadow
                                                        spreadRadius:
                                                            5, // Spread radius
                                                        blurRadius:
                                                            7, // Blur radius
                                                        offset: Offset(0,
                                                            3), // Offset in x and y directions
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                40, 40, 40, 0),
                                                        child: Container(
                                                          height: 200,
                                                          width: 200,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            color: hexToColor(
                                                                '#F3F8FF'),
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                height: 160,
                                                                width: 160,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: hexToColor(
                                                                          '#212C62')),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      '90 %',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Montserrat-medium',
                                                                          fontSize:
                                                                              36,
                                                                          color:
                                                                              hexToColor('#212C62')),
                                                                    ),
                                                                    Image.asset(
                                                                      'assets/images/arrow.png',
                                                                      height:
                                                                          23,
                                                                      width: 23,
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                20, 20, 20, 50),
                                                        child: Text(
                                                          'We redefine success with bespoke services, from eye-catching Branding.',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontSize: 18,
                                                              color: hexToColor(
                                                                  '#01010B')),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  if (_showSocialMediaManagement) // Conditionally show details
                                    Column(
                                      children: [
                                        Text('social media'),
                                      ],
                                    ),
                                  if (_showApplicationDevelopment) // Conditionally show details
                                    Column(
                                      children: [
                                        Text('application'),
                                      ],
                                    ),
                                  if (_showFreeService) // Conditionally show details
                                    Column(
                                      children: [
                                        Text('data'),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 1050,

                  // Adjust position to fit your design
                  height: 1800, // Height of the middle container
                  left: 50,
                  right: 50,
                  child: Expanded(
                    child: Container(
                      // Example color for the middle container

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Why Speeder Creative ?',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: hexToColor('#212C62'),
                              fontFamily: 'Montserrat-Medium',
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            'Delegate your success to our dedicated team.',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: hexToColor('#343030'),
                              fontFamily: 'Montserrat-Medium',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(children: [
                            Text(
                              'Transforming success through captivating web design, strategic social campaigns, and ',
                              style: TextStyle(
                                fontSize: 16,
                                color: hexToColor('#000000'),
                                fontFamily: 'Montserrat-Medium',
                              ),
                            ),
                            Text(
                              'powerful SEO. Dive into innovation and elevate your digital presence with us. ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'Montserrat-Medium',
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  child: WidgetView3(),
                                ),
                              ],
                            ),
                          ])
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 700,
                  child: Container(
                    // Color for the bottom half
                    child: Container(),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
    ;
  }
}

final List<Map<String, dynamic>> gridMap = [
  {
    "title": "7+ Years of experience",
    "a": "Learn More",
    "description":
        "Crafting personalized strategies and innovative solutions over seven years of dedicated service and client satisfaction with Speeder Creative.",
    "image": "assets/images/c1.png"
  },
  {
    "title": "1400 + Happy Customers",
    "a": "Learn More",
    "description":
        "Join our 1400+ satisfied clients who've benefited from our dedicated service and personalized approach to success with Speeder Creative.",
    "image": "assets/images/c2.png"
  },
  {
    "title": "140 + Projects Completed",
    "a": "Learn More",
    "description":
        "Successfully completing over 140 projects, delivering exceptional results with every client collaboration and project accomplishment with Speeder",
    "image": "assets/images/c3.png"
  },
  {
    "title": "Worldwide businessinfluence.",
    "a": "Learn More",
    "description":
        "Empowering global success through impactful solutions tailored to diverse markets and client needs with Speeder Creative..",
    "image": "assets/images/c4.png"
  },
];

class WidgetView3 extends StatefulWidget {
  const WidgetView3({super.key});

  @override
  State<WidgetView3> createState() => _WidgetView3State();
}

class _WidgetView3State extends State<WidgetView3> {
  @override
  int _hoverIndex = -1;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: .9),
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
                    padding: const EdgeInsets.all(3.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: _hoverIndex == index
                            ? hexToColor("#F3F8FF") // Change color on hover
                            : Colors.white,
                        boxShadow: _hoverIndex == index
                            ? [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.8),
                                  blurRadius: 20,
                                  offset: Offset(20, 20),
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
                      transform: _hoverIndex == index
                          ? Matrix4.diagonal3Values(1, 1, 1.2)
                          : Matrix4.identity(),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    child: Image.network(
                                      "${gridMap.elementAt(index)['image']}",
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                child: AutoSizeText(
                                  "${gridMap.elementAt(index)['title']}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Montserrat-Medium",
                                      color: hexToColor('#212C62'),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  minFontSize: 1,
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                height: 50,
                                width: 200,
                                child: AutoSizeText(
                                  "${gridMap.elementAt(index)['description']}",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: "Montserrat-Medium"),
                                  textAlign: TextAlign.center,
                                  maxLines: 4,
                                  minFontSize: 4,
                                ),
                              ),
                            ],
                          ),
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
