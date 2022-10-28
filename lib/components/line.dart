import 'package:flutter/material.dart';

class LineComponent extends StatefulWidget {
  const LineComponent({Key? key}) : super(key: key);

  @override
  State<LineComponent> createState() => _LineComponentState();
}

class _LineComponentState extends State<LineComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Line extends StatefulWidget {
  const Line({Key? key}) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.0),
      child: Container(
        height: 1.0,
        width: 600,
        color: Color(0xff7BC144),
      ),
    );
  }
}
