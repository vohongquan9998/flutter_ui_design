import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/card/zigzag_card/clip_path.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/black_line.dart';
import 'package:flutter_credit_card_ui/src/widget/bottom_back_item.dart';
import 'package:flutter_credit_card_ui/src/widget/otp_container.dart';

class Card_ZigZag_Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: getHeight(context, .02),
          right: -getWidth(context, .1),
          child: Transform.rotate(
            angle: 55 * pi / 180,
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
