import 'package:flutter/material.dart';

class TextWithShadow extends StatelessWidget {
  final String text;
  final Color color;
  final Color backColor;
  final Color borderColor;
  final double textSize;

  const TextWithShadow(this.text,
      {required this.color,
      required this.backColor,
      required this.borderColor,
      this.textSize = 24,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w400,
            color: color,
            shadows: [
              Shadow(
                offset: const Offset(0, 3),
                blurRadius: 0,
                color: backColor,
              ),
              Shadow(offset: Offset(-1, -1), color: borderColor),
              Shadow(offset: Offset(1, -1), color: borderColor),
              Shadow(offset: Offset(1, 1), color: borderColor),
              Shadow(offset: Offset(-1, 1), color: borderColor),
            ],
          ),
        ),
        // Text(
        //   text,
        //   style: TextStyle(
        //     fontSize: 26,
        //     fontWeight: FontWeight.w400,
        //     foreground: Paint()
        //       ..style = PaintingStyle.stroke
        //       ..strokeWidth = 6
        //       ..color = borderColor,
        //   ),
        // ),
      ],
    );
  }
}
