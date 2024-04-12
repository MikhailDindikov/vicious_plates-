import 'package:flutter/material.dart';

class SomeButWithoutTreshina extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color shadowColor;
  const SomeButWithoutTreshina(
      {required this.child,
      required this.color,
      required this.shadowColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: shadowColor,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
