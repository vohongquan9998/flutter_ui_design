import 'package:flutter/cupertino.dart';

class ZigZig_Clippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * .05, 0);
    path.lineTo(size.width * .2, size.height * .1);
    path.lineTo(size.width * .75, size.height * .1);
    path.lineTo(size.width * .15, size.height * .7);
    path.lineTo(size.width * .1, size.height);
    path.lineTo(size.width * .85, size.height);
    path.lineTo(size.width * .95, size.height * .8);
    path.lineTo(size.width * .4, size.height * .8);
    path.lineTo(size.width * .85, size.height * .3);
    path.lineTo(size.width * .97, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
