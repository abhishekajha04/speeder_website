import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ContactTablet extends StatefulWidget {
  const ContactTablet({super.key});

  @override
  State<ContactTablet> createState() => _ContactTabletState();
}

class _ContactTabletState extends State<ContactTablet> {
  @override
  Widget build(BuildContext context) {
    return (Column(children: [widget1(), Widget2(), ContactUsView()]));
  }
}

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  final myitems = [
    Image.asset('assets/images/a1.png'),
    Image.asset('assets/images/a2.png'),
    Image.asset('assets/images/a5.png'),
    Image.asset('assets/images/a6.png'),
    Image.asset('assets/images/a7.png'),
    Image.asset('assets/images/a9.png'),
    Image.asset('assets/images/a12.png'),
    Image.asset('assets/images/a14.png'),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text.rich(TextSpan(
          text: '45+ customers in',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              color: hexToColor('#000000')),
          children: <TextSpan>[
            TextSpan(
              text: 'over 07 countries ',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: hexToColor('#3B62D8'),
              ),
            ),
            TextSpan(
              text: 'grow their business with Growly',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  color: hexToColor('#000000')),
            )
          ])),
      CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          initialPage: 0, // Set the initial page index to 0 (first image)
          viewportFraction: 1 / 8.0,
          height: 300,

          autoPlayAnimationDuration: const Duration(milliseconds: 200),
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          onPageChanged: (index, reason) {
            setState(() {
              myCurrentIndex = index;
            });
          },
        ),
        items: myitems,
      ),
    ]);
  }
}

class Widget2 extends StatefulWidget {
  const Widget2({super.key});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
            child: Container(
                height: 400,
                width: 530,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact US',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Montserrat',
                          color: hexToColor('#212C62')),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/b1.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            'Pune, Autadwadi Handewadi, Maharashtra 411028 Simplicity 304 Hadapsar',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/b2.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            '+91 9637903345',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/b3.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            'info@speedercreative.com',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/b4.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/b5.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/b6.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/images/b7.png',
                          height: 40,
                          width: 40,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 90, 50, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 2, // Blur radius
                    offset: Offset(0, 1), // Offset of the shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 480,
              width: 700,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true, // Fill the TextField with a color
                                fillColor: hexToColor('#F3F8FF'),
                                hintText: 'First Name',
                                hintStyle:
                                    TextStyle(color: hexToColor('#5F5C5C')),
                                labelText: 'First Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          SizedBox(width: 20), // Add space between text fields
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true, // Fill the TextField with a color
                                fillColor: hexToColor('#F3F8FF'),
                                hintText: 'Last Name',
                                hintStyle:
                                    TextStyle(color: hexToColor('#5F5C5C')),
                                labelText: 'Last Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none, // Border colo
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true, // Fill the TextField with a color
                                fillColor: hexToColor('#F3F8FF'),
                                hintText: 'Email',
                                hintStyle:
                                    TextStyle(color: hexToColor('#5F5C5C')),
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          SizedBox(width: 20), // Add space between text fields
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true, // Fill the TextField with a color
                                fillColor: hexToColor('#F3F8FF'),
                                hintText: 'Message',
                                hintStyle:
                                    TextStyle(color: hexToColor('#5F5C5C')),

                                labelText: 'Message',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Border colo
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20), // Add space between text fields
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: hexToColor('#8DC531'),
                            ),
                            height: 49,
                            width: 170,
                            child: Center(
                              child: Text(
                                'Send',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        height: 240,
        color: hexToColor('#164DAE'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100, 50, 20, 0),
                child: Expanded(
                  child: Container(
                    height: 200,
                    width: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact US',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Medium',
                              fontSize: 35,
                              color: Colors.white),
                        ),
                        Text(
                          'Ready to elevate your digital presence? Lets collaborate and bring your vision to life.Get in touch with us today and discover how we can empower your brands success.',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Medium',
                              fontSize: 13,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 114,
                  width: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true, // Fill the TextField with a color
                              fillColor: hexToColor('#F3F8FF'),
                              hintText: 'Your Mail',
                              hintStyle:
                                  TextStyle(color: hexToColor('#5F5C5C')),
                              labelText: 'Your Mail',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: hexToColor('#164DAE'),
                          ),
                          height: 49,
                          width: 105,
                          child: Center(
                            child: Text(
                              'Send',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
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
