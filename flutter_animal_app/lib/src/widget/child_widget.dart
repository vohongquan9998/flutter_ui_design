import 'package:flutter/material.dart';
import 'package:flutter_animal_app/data/data.dart';
import 'package:flutter_animal_app/ultis/constant.dart';
import 'package:flutter_animal_app/ultis/size_config.dart';

class AnimalChildWidget extends StatelessWidget {
  final int index;
  AnimalChildWidget({required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      width: getScreenWidth(context, 0, true),
      child: Padding(
        padding: EdgeInsets.all(getScreenWidth(context, 40, false)),
        child: GestureDetector(
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    animalList()[index].imageUrl,
                    color: Colors.grey,
                    fit: BoxFit.fitHeight,
                    colorBlendMode: BlendMode.saturation,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: getScreenHeight(context, 20, false),
                child: Container(
                  width: getScreenWidth(context, 0, true),
                  child: Text(
                    animalList()[index].name,
                    textAlign: TextAlign.center,
                    style: kNameHomePageTextStyle(context),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
