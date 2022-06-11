import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';

class Otp_Container extends StatelessWidget {
  final double h;
  final double w;
  final int style;
  final String otp;
  final Color otpColor;

  Otp_Container(
      {required this.h,
      required this.style,
      required this.w,
      required this.otp,
      required this.otpColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          gradient: LinearGradient(
            colors: style_gradient[style],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            otp,
            style: TextStyle(
                color: otpColor,
                fontSize: getWidth(context, 0.04),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: getWidth(context, .03),
          )
        ],
      ),
    );
  }
}

List<List<Color>> style_gradient = [
  [Colors.grey.shade500, Colors.grey.shade300],
  [Colors.white70, Colors.white38],
];
