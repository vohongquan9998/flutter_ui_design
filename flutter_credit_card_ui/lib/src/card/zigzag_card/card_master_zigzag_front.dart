import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/card/zigzag_card/clip_path.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/date_widget.dart';

import 'package:flutter_credit_card_ui/src/widget/series_widget.dart';

class Card_ZigZag_Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -getWidth(context, .1),
          child: Transform.rotate(
            angle: -45 * pi / 180,
            child: ClipPath(
              clipper: ZigZig_Clippath(),
              child: Container(
                width: getWidth(context, 1),
                height: getHeight(context, .3),
                color: Colors.amber.withOpacity(.2),
              ),
            ),
          ),
        ),
        Positioned(
          left: getWidth(context, .045),
          top: getHeight(context, .06),
          child: Row(
            children: [
              Image.asset(
                'assets/chip.PNG',
                width: 40,
                fit: BoxFit.fitHeight,
                height: 40,
              ),
              SizedBox(
                width: getWidth(context, .01),
              ),
              Transform.rotate(
                angle: 90 * pi / 180,
                child: Image.asset(
                  'assets/wave.png',
                  width: 40,
                  fit: BoxFit.fitHeight,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: getWidth(context, .04),
          child: Image.asset('assets/mastercard.png'),
        ),
        Positioned(
          left: getWidth(context, .035),
          top: getHeight(context, .12),
          child: SeriesWidget(
            color: Colors.white70,
          ),
        ),
        Positioned(
          left: getWidth(context, .3),
          bottom: getHeight(context, .05),
          child: DateWidget(w: getWidth(context, 1), h: getHeight(context, 1)),
        ),
        Positioned(
          left: getWidth(context, .05),
          bottom: -getHeight(context, .045),
          child: Container(
            width: getWidth(context, .8),
            height: getHeight(context, .1),
            child: Text(
              'VO HONG QUAN',
              style: TextStyle(
                fontSize: getWidth(context, .06),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
