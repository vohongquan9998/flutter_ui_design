import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';

class Stamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context, .22),
      height: getHeight(context, .07),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.grey.shade300,
          Colors.grey.shade400,
          Colors.grey.shade300
        ], begin: Alignment.topLeft, end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
