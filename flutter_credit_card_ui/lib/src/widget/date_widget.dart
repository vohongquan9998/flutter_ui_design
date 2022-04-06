import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
    required this.w,
    required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * .5,
      height: h * .07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'GOOD \nTHRU',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w700,
                fontSize: w * .025),
          ),
          Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
          Text(
            '06/23',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w700,
              fontSize: w * .05,
            ),
          )
        ],
      ),
    );
  }
}
