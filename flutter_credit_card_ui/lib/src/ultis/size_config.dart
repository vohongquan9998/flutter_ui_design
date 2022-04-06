import 'package:flutter/cupertino.dart';

double getWidth(BuildContext context, double rate) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return mediaQueryData.size.width * rate;
}

double getHeight(BuildContext context, double rate) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return mediaQueryData.size.height * rate;
}
