import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/flip.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    Key? key,
    required this.color,
    required this.frontChild,
    required this.backChild,
  }) : super(key: key);

  final Color color;
  final Widget frontChild;
  final Widget backChild;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
            width: double.infinity,
            height: getHeight(context, .27),
            decoration: BoxDecoration(
                color: color.withOpacity(.9),
                borderRadius: BorderRadius.circular(10)),
            child: frontChild),
        back: Container(
          width: double.infinity,
          height: getHeight(context, .27),
          decoration: BoxDecoration(
              color: color.withOpacity(.9),
              borderRadius: BorderRadius.circular(10)),
          child: backChild,
        ),
      ),
    );
  }
}
