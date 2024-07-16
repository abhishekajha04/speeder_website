import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:speeder_website/utills/consts.dart';

class WebScroll extends StatefulWidget {
  final ScrollController controller;
  final Widget child;

  const WebScroll({super.key, required this.controller, required this.child});

 @override
  State<StatefulWidget> createState() {
    return _WebScrollState();
  }
}

class _WebScrollState extends State<WebScroll> {
  double scroll = 0;
  int lastScrollTime = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (pointerSignal) {
        final currentTime = DateTime.now().millisecondsSinceEpoch;
        if (currentTime - lastScrollTime < NORMAL_SCROLL_ANIMATION_LENGTH_MS) {
          return;
        }
        lastScrollTime = currentTime;

        // int millis = NORMAL_SCROLL_ANIMATION_LENGTH_MS;
        if (pointerSignal is PointerScrollEvent) {
          // setState(() {
          //   if (pointerSignal.scrollDelta.dy > 0) {
          //     scroll += SCROLL_SPEED;
          //   } else {
          //     scroll -= SCROLL_SPEED;
          //   }
          //   if (scroll > widget.controller.position.maxScrollExtent) {
          //     scroll = widget.controller.position.maxScrollExtent;
          //     millis = NORMAL_SCROLL_ANIMATION_LENGTH_MS ~/ 2;
          //   } else if (scroll < 0) {
          //     scroll = 0;
          //     millis = NORMAL_SCROLL_ANIMATION_LENGTH_MS ~/ 2;
          //   }
          //   widget.controller.animateTo(
          //     scroll,
          //     duration: Duration(milliseconds: millis),
          //     curve: Curves.easeInOut,
          //   );
          // }
          // );
        }
      },
      child: widget.child,
    );
  }
}
