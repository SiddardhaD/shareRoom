import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 250,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
             Center(
              child: Text(
                'Helps To Find You The Best Room Partner to Share',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalTextDynamic extends StatelessWidget {
  final String title;
  HorizontalTextDynamic({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 30.0, left: 10.0),
      child: SizedBox(
        //color: Colors.green,
        height: 250,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                title,
                style:  TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalTextDynamic1 extends StatelessWidget {
  final String title;
  HorizontalTextDynamic1({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 30.0, left: 10.0),
      child: SizedBox(
        //color: Colors.green,
        // height: 250,
        // width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                title,
                style:  TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
