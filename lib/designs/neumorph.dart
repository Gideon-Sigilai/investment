import 'package:flutter/material.dart';
import 'dart:ui';

class neumorph extends StatelessWidget {
  final double padding;
  final double margin;
  final int color;
  final double radius;
  final Widget child;

  const neumorph({
    Key? key,
    required this.padding,
    required this.margin,
    required this.color,
    required this.child,
    required this.radius,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            offset: Offset(-4,-4),
            color: Colors.white,
            blurRadius: 8,
            spreadRadius: 0.4,
          ),
          BoxShadow(
            offset: Offset(4,4),
            color: Colors.grey.shade400,
            blurRadius: 9,
            spreadRadius: 0.4,
          )
        ]
      ),
      child: child,

    );
  }
}
