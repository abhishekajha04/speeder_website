import 'package:flutter/material.dart';
import 'package:speeder_website/utills/utils.dart';

Widget buildElevatedButton(
  String title,
  Function onPressed, {
  double leftMargin = 30,
  double rightMargin = 30,
  double topMargin = 0,
  double bottomMargin = 40,
  double fontSize = 20,
  double borderRadius = 10,
  double height = 65,
  double width = double.infinity,
  String backgroundColor = '#C7E5FA',
  String hoverBackgroundColor = '#A3D3F8', // New hover background color
  String textColor = "#000000",
  var isButtonVisible = true,
  var isProgressBarVisible = false,
}) {
  return StatefulBuilder(
    builder: (context, setState) {
      bool isHovered = false;

      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: height,
            margin: EdgeInsets.fromLTRB(
              leftMargin,
              topMargin,
              rightMargin,
              bottomMargin,
            ),
            child: Visibility(
              visible: isButtonVisible,
              child: MouseRegion(
                onEnter: (_) => setState(() => isHovered = true),
                onExit: (_) => setState(() => isHovered = false),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // ignore: dead_code
                    color: isHovered
                        // ignore: dead_code
                        ? hexToColor(hoverBackgroundColor)
                        : hexToColor(backgroundColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      onPressed();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.transparent, // Transparent background
                      elevation: 1, // No shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ),
                    child: FittedBox(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: hexToColor(textColor),
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: isProgressBarVisible,
            child: const CircularProgressIndicator(color: Color(0xFF4F346B)),
          ),
        ],
      );
    },
  );
}

Widget mainMenuButton(String label) {
  return HoverWidget(
    builder: (isHovered) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isHovered ? Colors.grey.withOpacity(0.2) : Colors.transparent,
        ),
        child: PhysicalModel(
          color: Colors.transparent,
          elevation: isHovered ? 25 : 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: hexToColor("#002366"),
            ),
            height: 40,
            width: 125,
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "BebasNeue",
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

class HoverWidget extends StatefulWidget {
  final Function(bool isHovered) builder;

  const HoverWidget({super.key, required this.builder});
  @override
  // ignore: library_private_types_in_public_api
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0, -4, 0);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
