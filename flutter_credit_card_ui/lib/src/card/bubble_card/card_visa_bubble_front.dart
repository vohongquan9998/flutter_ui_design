import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/circle_widget.dart';
import 'package:flutter_credit_card_ui/src/widget/date_widget.dart';
import 'package:flutter_credit_card_ui/src/widget/series_widget.dart';

class Card_Bubble_bg extends StatefulWidget {
  @override
  _Card_Bubble_bgState createState() => _Card_Bubble_bgState();
}

class _Card_Bubble_bgState extends State<Card_Bubble_bg> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: getWidth(context, .05),
            bottom: -getHeight(context, .05),
            child: CircleWidget(
              w: getWidth(context, 1),
              widthRate: .6,
              color: Colors.blue.shade800.withOpacity(.3),
            )),
        Positioned(
          left: getWidth(context, .05),
          top: -getHeight(context, .1),
          child: CircleWidget(
            w: getWidth(context, 1),
            widthRate: .4,
            color: Colors.blue.shade800.withOpacity(.7),
          ),
        ),
        Positioned(
            right: getWidth(context, .1),
            bottom: -getHeight(context, .05),
            child: CircleWidget(
              w: getWidth(context, 1),
              widthRate: .3,
              color: Colors.blue.shade800.withOpacity(.6),
            )),
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
          child: Image.asset('assets/visacard.png'),
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
