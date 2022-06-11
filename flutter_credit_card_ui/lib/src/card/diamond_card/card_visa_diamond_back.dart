import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/black_line.dart';
import 'package:flutter_credit_card_ui/src/widget/bottom_back_item.dart';
import 'package:flutter_credit_card_ui/src/widget/circle_widget.dart';
import 'package:flutter_credit_card_ui/src/widget/otp_container.dart';
import 'package:flutter_credit_card_ui/src/widget/rectangle_widget.dart';

class Card_Diamond_Back extends StatelessWidget {
  const Card_Diamond_Back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: getWidth(context, .12),
          bottom: -getHeight(context, .08),
          child: RectangleWidget(
              w: getWidth(context, .5),
              color: Colors.blue.shade800.withOpacity(.2)),
        ),
        Positioned(
          right: getWidth(context, .22),
          bottom: -getHeight(context, .08),
          child: RectangleWidget(
              w: getWidth(context, .5),
              color: Colors.blue.shade800.withOpacity(.2)),
        ),
        Positioned(
          right: getWidth(context, .12),
          child: RectangleWidget(
              w: getWidth(context, .5),
              color: Colors.blue.shade800.withOpacity(.2)),
        ),
        Positioned(
          right: getWidth(context, .22),
          child: RectangleWidget(
              w: getWidth(context, .5),
              color: Colors.blue.shade800.withOpacity(.2)),
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
