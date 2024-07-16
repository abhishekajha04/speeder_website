import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

class PortfolioHomeWidget extends StatefulWidget {
  const PortfolioHomeWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return PortfolioHomeWidgetState();
  }
}

class PortfolioHomeWidgetState extends State<PortfolioHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 130, 10, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: "230 + customers in ",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: hexToColor("#000000")),
                children: [
                  TextSpan(
                    text: "over 120 countries",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: hexToColor("#3B62D8")),
                  ),
                  TextSpan(
                    text: " grow their business with Growly",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: hexToColor("#000000")),
                  ),
                ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                child: Image.asset(
                  "assets/images/img5.png",
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                child: Image.asset(
                  "assets/images/img6.png",
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                child: Image.asset(
                  "assets/images/img7.png",
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 80, 10),
                child: Image.asset(
                  "assets/images/img8.png",
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Image.asset(
                  "assets/images/img9.png",
                  height: 50,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
