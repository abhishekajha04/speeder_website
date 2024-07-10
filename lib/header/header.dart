import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Padding(
      padding: const EdgeInsets.only(right: 30, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageButton("assets/images/phone.png"),
          const SizedBox(width: 5),
          const Text(
            "+91 96379 03345",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 25),
          imageButton("assets/images/social_media.png"),
          const SizedBox(width: 5),
          imageButton("assets/images/instagram.png"),
          imageButton("assets/images/facebook.png"),
          imageButton("assets/images/youtube.png"),
          imageButton("assets/images/linkedIn.png"),
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
              padding: EdgeInsets.fromLTRB(50 / mockupWidth * width, 0, 10, 0),
              child: Image.asset(
                "assets/images/logo.png",
                width: 100,
              ),
            ),
          ),
          if (Responsive.isDesktop(context))
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MenuText(
                    text: "HOME",
                  ),
                  MenuText(
                    text: "ABOUT US",
                  ),
                  MenuText(
                    text: "OUR SERVICES",
                  ),
                  MenuText(
                    text: "PROJECTS",
                  ),
                  MenuText(
                    text: "CONTACT US",
                  ),
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
  const MenuText({super.key, required this.text});

  @override
  State<StatefulWidget> createState() {
    return _MenuTextState();
  }
}

class _MenuTextState extends State<MenuText> {
  bool _isHovered = false;
  double _textWidth = 0;
  final GlobalKey _textKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _calculateTextWidth());
  }

  void _calculateTextWidth() {
    final RenderBox renderBox =
        _textKey.currentContext!.findRenderObject() as RenderBox;
    setState(() {
      _textWidth = renderBox.size.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: Text(
                widget.text,
                key: _textKey,
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  color: _isHovered
                      ? hexToColor("#002366")
                      : hexToColor("#7A8AA8"),
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: _isHovered ? _textWidth : 0,
              color: hexToColor("#002366"),
            ),
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
