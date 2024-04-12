import 'package:flutter/material.dart';

class RPltWidget extends StatelessWidget {
  final int count;
  const RPltWidget({required this.count, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 144,
          width: 131,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 140, 140, 1),
                  Color.fromRGBO(159, 82, 82, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(-4, 3),
                    color: Color.fromRGBO(140, 66, 66, 1))
              ]),
          padding: EdgeInsets.all(3),
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(184, 61, 61, 1)),
          ),
        ), ...List.generate(
              count,
              (index) => Positioned(
                    bottom: index * 3,
                    child: Image.asset(
                      'assets/rp.png',
                      filterQuality: FilterQuality.high,
                      width: 133,
                    ),
                  )),
      ],
    );
  }
}
