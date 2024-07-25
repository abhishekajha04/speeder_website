import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class FeatureMobile extends StatefulWidget {
  const FeatureMobile({super.key});

  @override
  State<FeatureMobile> createState() => _FeatureMobileState();
}

class _FeatureMobileState extends State<FeatureMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWiget(),
        GridWidget(),
      ],
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Image.asset(
              "assets/images/13.png",
              height: 60,
              width: 60,
            ),
          ),
          Text(
            "Features",
            style: TextStyle(
                fontSize: 36,
                fontFamily: "Montserrat",
                color: hexToColor("#212C62")),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            width: 400,
            child: Text(
              "Speeder Creatives redefines success with tailored services in graphic design, video editing, website development, and intuitive UI/UX design. Dive into innovation and elevate your digital presence with our creative expertise.",
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Montserrat-Black",
                  color: hexToColor("#01010B")),
            ),
          )
        ],
      ),
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

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  int _hoverIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(90.0, 30.0, 90.0, 0.0),
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.3),
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
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: _hoverIndex == index
                            ? Colors.white // Change color on hover
                            : hexToColor("#F3F8FF"),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                child: Image.network(
                                  "${gridMap.elementAt(index)['image']}",
                                  height: 80,
                                  width: 55,
                                ),
                              ),
                            ),
                            Text(
                              "${gridMap.elementAt(index)['title']}",
                              style: TextStyle(
                                  fontSize: 9, fontFamily: "Montserrat-Medium"),
                              textAlign: TextAlign.center,
                            ),
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
