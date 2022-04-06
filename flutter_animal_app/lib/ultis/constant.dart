import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animal_app/ultis/size_config.dart';

TextStyle kNameHomePageTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 130, false),
      color: Colors.white.withOpacity(.9),
      fontWeight: FontWeight.bold);
}

TextStyle kNameDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 80, false),
      color: Colors.black.withOpacity(.9),
      fontWeight: FontWeight.w900);
}

TextStyle kscientificNameDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 50, false),
      color: Colors.black.withOpacity(.9),
      fontWeight: FontWeight.w700);
}

TextStyle kLocationDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 45, false),
      color: Colors.white70,
      fontWeight: FontWeight.w700);
}

TextStyle kSmallDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 35, false),
      color: Colors.black.withOpacity(.9),
      fontWeight: FontWeight.w700);
}

TextStyle kTabChoseDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 45, false),
      color: Colors.black.withOpacity(.9),
      fontWeight: FontWeight.w900);
}

TextStyle kTabNotChooseDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 45, false),
      color: Colors.grey.withOpacity(.9),
      fontWeight: FontWeight.w900);
}

TextStyle kHabitatDetailsTextStyle(BuildContext context) {
  return TextStyle(
      fontSize: getScreenWidth(context, 45, false),
      color: Colors.black.withOpacity(.9),
      fontWeight: FontWeight.w900);
}
