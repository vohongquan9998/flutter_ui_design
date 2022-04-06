import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/ultis/size_config.dart';
import 'package:flutter_credit_card_ui/src/widget/stamp.dart';

class BottomItemWidget extends StatelessWidget {
  const BottomItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stamp(),
        SizedBox(
          width: getWidth(context, .03),
        ),
        Container(
          width: getWidth(context, .7),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
            style: TextStyle(fontSize: getWidth(context, .025)),
          ),
        ),
      ],
    );
  }
}
