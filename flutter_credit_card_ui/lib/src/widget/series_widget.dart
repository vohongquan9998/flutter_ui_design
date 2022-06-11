import 'package:flutter/material.dart';

class SeriesWidget extends StatefulWidget {
  final Color color;
  SeriesWidget({required this.color});
  @override
  _Series_WidgetState createState() => _Series_WidgetState();
}

class _Series_WidgetState extends State<SeriesWidget> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * .72,
      height: h * .053,
      child: Center(
        child: Text(
          'XXXX - XXXX - XXXX - XXXX',
          style: TextStyle(
              fontSize: w * .055,
              color: widget.color,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
