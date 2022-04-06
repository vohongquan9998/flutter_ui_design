import 'package:flutter/material.dart';

import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/black_line.dart';
import 'package:flutter_credit_card_ui/src/widget/bottom_back_item.dart';
import 'package:flutter_credit_card_ui/src/widget/circle_widget.dart';
import 'package:flutter_credit_card_ui/src/widget/otp_container.dart';

class Card_Bubble_back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: getWidth(context, .05),
            bottom: -getHeight(context, .05),
            child: CircleWidget(
              w: getWidth(context, 1),
              widthRate: .6,
              color: Colors.blue.shade800.withOpacity(.3),
            )),
        Positioned(
          right: getWidth(context, .05),
          top: -getHeight(context, .1),
          child: CircleWidget(
            w: getWidth(context, 1),
            widthRate: .4,
            color: Colors.blue.shade800.withOpacity(.7),
          ),
        ),
        Positioned(
            left: getWidth(context, .1),
            bottom: -getHeight(context, .05),
            child: CircleWidget(
              w: getWidth(context, 1),
              widthRate: .3,
              color: Colors.blue.shade800.withOpacity(.6),
            )),
        Positioned(top: getHeight(context, .04), child: BlackLine()),
        Positioned(
          left: getWidth(context, .1),
          top: getHeight(context, .115),
          child: Otp_Container(
              h: getHeight(context, .04),
              style: 0,
              w: getWidth(context, .8),
              otp: '123',
              otpColor: Colors.black87),
        ),
        Positioned(
            bottom: getHeight(context, .02),
            left: getWidth(context, .025),
            child: BottomItemWidget()),
      ],
    );
  }
}
