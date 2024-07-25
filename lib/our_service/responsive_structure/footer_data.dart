// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class FooterMain extends StatelessWidget {
  const FooterMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor("#002366"),
      height: 306,
      alignment: Alignment.center,
      child: Container(
        color: hexToColor("#002366"),
        height: 300,
        width: 900,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "SPEEDER",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          AutoSizeText(
                            "Welcome to Speeder Creative Your strategic partner in digital innovation.innovation. We are driven by results, crafting compelling success stories that elevate your brand online",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                            maxLines: 6,
                            minFontSize: 9,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "QUICK LINK",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "home",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "about us",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "blog",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "FAQ'S",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "pricing",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "contact",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OUR EXPERTISE",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Performance Marketing",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "E-Commerce Solution",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Search Engine Optimization",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Full API Integration",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Influencer Marketing",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Public Relation",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Website Development",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Graphic Design",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Social Media",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Business Development",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Google Adwords",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Content Writing",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONTACT",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Pune, Maharashtra Handewadi Hadapsar simplicity Apartment",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "pin code 411028",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Contact +91 9637903345",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mail: speeder solution@gmail.com",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterMobile extends StatefulWidget {
  const FooterMobile({super.key});

  @override
  State<FooterMobile> createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF002366),
      height: 306,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          alignment: Alignment.center,
          color: Color(0xFF002366),
          height: 300,
          width: 900,
          child: Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 300,
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          child: Text(
                            "SPEEDER",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome to Speeder Creative Your strategic partner in digital innovation.innovation. We are driven by results, crafting compelling success stories that elevate your brand online",
                          style: TextStyle(fontSize: 6, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "QUICK LINK",
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "home",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "about us",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "blog",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "FAQ'S",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "pricing",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "contact",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(width: 35),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OUR EXPERTISE",
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Performance Marketing",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "E-Commerce Solution",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Search Engine Optimization",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Full API Integration",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Influencer Marketing",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Public Relation",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Website Development",
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Graphic Design",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Social Media",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Business Development",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Google Adwords",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Content Writing",
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CONTACT",
                        style: TextStyle(fontSize: 9, color: Colors.white),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Pune, Maharashtra Handewadi Hadapsar simplicity Apartment",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "pin code 411028",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Contact +91 9637903345",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mail: speeder solution@gmail.com",
                        style: TextStyle(fontSize: 7, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterMobile2 extends StatefulWidget {
  const FooterMobile2({super.key});

  @override
  State<FooterMobile2> createState() => _FooterMobile2State();
}

class _FooterMobile2State extends State<FooterMobile2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF002366),
      height: 1200,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          color: Color(0xFF002366),
          height: 1200,
          width: 900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: Text(
                          "SPEEDER",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome to Speeder Creative Your strategic partner in digital innovation.innovation. We are driven by results, crafting compelling success stories that elevate your brand online",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "QUICK LINK",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "home",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "about us",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "blog",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "FAQ'S",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "pricing",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "contact",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OUR EXPERTISE",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Performance Marketing",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "E-Commerce Solution",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Search Engine Optimization",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Full API Integration",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Influencer Marketing",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Public Relation",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    "Website Development",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Graphic Design",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Social Media",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Business Development",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Google Adwords",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Content Writing",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CONTACT",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Pune, Maharashtra Handewadi Hadapsar simplicity Apartment",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "pin code 411028",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Contact +91 9637903345",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mail: speeder solution@gmail.com",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

