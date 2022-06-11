import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.w,
    required this.widthRate,
    required this.color,
  }) : super(key: key);

  final double w;
  final double widthRate;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * widthRate,
      height: w * widthRate,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
