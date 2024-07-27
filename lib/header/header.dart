import 'package:flutter/material.dart';
import 'package:speeder_website/about_us_page/about_us_page.dart';
import 'package:speeder_website/home_page/homepage.dart';
import 'package:speeder_website/responsive/responsive.dart';
import 'package:speeder_website/utills/consts.dart';
import 'package:speeder_website/utills/utils.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeaderState();
  }
}

class HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [WebViewHeader()],
    );
  }
}

class WebViewHeader extends StatefulWidget {
  const WebViewHeader({super.key});

  @override
  State<StatefulWidget> createState() {
    return WebViewHeaderState();
  }
}

class WebViewHeaderState extends State<WebViewHeader> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ContactSection(), HeaderContentSection()],
    );
  }
}

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContactSectionState();
  }
}

class ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: width > SCREEN_SIZE ? RIGHT_PADDING : 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageButton("assets/images/phone.png"),
          const SizedBox(width: 5),
          const Text(
            "Get a Proposal:",
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 5),
          const Text(
            "+91 96379 03345",
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget imageButton(String image) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            image,
            width: 22,
          )),
    );
  }
}

class HeaderContentSection extends StatefulWidget {
  const HeaderContentSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeaderContentSectionState();
  }
}

class HeaderContentSectionState extends State<HeaderContentSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(width > SCREEN_SIZE ? 100 : 15, 0, 10, 0),
              child: Image.asset(
                "assets/images/logo.png",
                width: 100,
              ),
            ),
          ),
          if (Responsive.isDesktop(context))
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MenuText(
                    text: "Home",
                    onClick: () {
                      navigateToHomePage(context);
                    },
                  ),
                  MenuText(
                      text: "About Us",
                      onClick: () {
                        navigateToAboutUsPage(context);
                      }),
                  MenuText(text: "Our Services", onClick: () {}),
                  MenuText(text: "Pricing", onClick: () {}),
                  MenuText(text: "CONTACT US", onClick: () {}),
                ],
              ),
            )
        ],
      ),
    );
  }
}

class MenuText extends StatefulWidget {
  final String text;

  final Function onClick;
  const MenuText({super.key, required this.text, required this.onClick});

  @override
  State<StatefulWidget> createState() {
    return _MenuTextState();
  }
}

class _MenuTextState extends State<MenuText> {
  bool _isHovered = false;
  final GlobalKey _textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MouseRegion(
            onEnter: (event) => _onHover(true),
            onExit: (event) => _onHover(false),
            cursor: SystemMouseCursors.click,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                onTap: () {
                  widget.onClick();
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: _isHovered
                          ? const BorderRadius.all(Radius.circular(15))
                          : null,
                      border: _isHovered
                          ? Border.all(color: hexToColor("#212C62"))
                          : null),
                  child: Text(
                    widget.text,
                    key: _textKey,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: _isHovered
                          ? hexToColor("#002366")
                          : hexToColor("#2D2D2D"),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}

void navigateToHomePage(BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: ((BuildContext context) {
    return const HomePage();
  })), (route) => false);
}

void navigateToAboutUsPage(BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: ((BuildContext context) {
    return const AboutUs();
  })), (route) => false);
}
