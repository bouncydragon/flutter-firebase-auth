import 'package:flutter/material.dart';

class CircleDesign extends StatelessWidget {
  final double height;
  final double width;
  final int color;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomRightRadius;
  final double? bottomLeftRadius;

  const CircleDesign({ 
    Key? key, 
    required this.height,
    required this.width,
    required this.color,
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(color),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius!),
          topRight: Radius.circular(topRightRadius!),
          bottomRight: Radius.circular(bottomRightRadius!),
          bottomLeft: Radius.circular(bottomLeftRadius!),
        ),
      ));
  }
}