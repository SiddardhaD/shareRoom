import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {
  @override
  _VerticalTextState createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'ShareWe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}

class VerticalTextDynamic extends StatelessWidget {
  final String title;
  VerticalTextDynamic({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}

class VerticalTextDynamic1 extends StatelessWidget {
  final String title;
  VerticalTextDynamic1({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
