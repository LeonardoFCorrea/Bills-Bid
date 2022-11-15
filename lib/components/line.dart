import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final double width;
  const Line({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        height: 1.0,
        width: width,
        color: Color(0xff7BC144),
      ),
    );
  }
}
