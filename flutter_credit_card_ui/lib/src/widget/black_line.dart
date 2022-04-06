import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';

class BlackLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context, 1),
      height: getHeight(context, .06),
      color: Colors.black,
    );
  }
}
