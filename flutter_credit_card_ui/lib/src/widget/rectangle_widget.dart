import 'dart:math';

import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
  final double w;
  final Color color;
  RectangleWidget({required this.w, required this.color});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -45 * pi / 180,
      child: Container(
        width: w,
        height: w,
        color: color,
      ),
    );
  }
}
