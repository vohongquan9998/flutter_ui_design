import 'package:flutter/widgets.dart';

double getScreenWidth(BuildContext context, double value, bool isFill) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return isFill
      ? mediaQueryData.size.width
      : mediaQueryData.size.width * value / 1000;
}

double getScreenHeight(BuildContext context, double value, bool isFill) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return isFill
      ? mediaQueryData.size.height
      : mediaQueryData.size.height * value / 1000;
}
