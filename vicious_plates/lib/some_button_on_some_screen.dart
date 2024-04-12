import 'package:flutter/material.dart';

class SomeButtomOnSomeScreen extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color shadowColor;
  const SomeButtomOnSomeScreen(
      {required this.child,
      required this.color,
      required this.shadowColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 242, 234, 1),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Color.fromRGBO(192, 202, 217, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(2).copyWith(top: 0),
        decoration: BoxDecoration(
          color: shadowColor,
          borderRadius: BorderRadius.circular(9),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CustomPaint(
            foregroundPainter: Treshini(shadowColor),
            child: Container(
              decoration: BoxDecoration(
                color: color,
              ),
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class Treshini extends CustomPainter {
  final Color color;

  Treshini(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height - 3.5);
    path.lineTo(size.width - 1.5, size.height - 3);
    path.lineTo(size.width - 11.5, size.height - 6);
    path.lineTo(size.width - 17, size.height - 10);
    path.lineTo(size.width - 10.5, size.height - 7);
    path.lineTo(size.width, size.height - 4.5);
    path.close();
    final path2 = Path();
    path2.moveTo(size.width, size.height - 2.9);
    path2.lineTo(size.width - 1.5, size.height - 2.7);
    path2.lineTo(size.width - 12.5, size.height - 5.5);
    path2.lineTo(size.width - 17, size.height - 10.2);
    path2.lineTo(size.width - 10.5, size.height - 7);
    path2.lineTo(size.width, size.height - 4.5);
    path2.close();

    final path3 = Path();
    path3.moveTo(0, size.height / 2 + 4.5);
    path3.lineTo(9, size.height / 2 + 4.5);
    path3.lineTo(16, size.height / 2 + 3.5);
    path3.lineTo(9.5, size.height / 2 + 5.5);
    path3.lineTo(0, size.height / 2 + 5.5);
    path3.close();
    final path4 = Path();
    path4.moveTo(0, size.height / 2 + 4.5);
    path4.lineTo(9, size.height / 2 + 4.5);
    path4.lineTo(16, size.height / 2 + 3.5);
    path4.lineTo(9.5, size.height / 2 + 5.9);
    path4.lineTo(0, size.height / 2 + 5.9);
    path4.close();
    canvas.drawPath(
        path2,
        Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.white);
    canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.fill
          ..color = color);
    canvas.drawPath(
        path4,
        Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.white);
    canvas.drawPath(
        path3,
        Paint()
          ..style = PaintingStyle.fill
          ..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
