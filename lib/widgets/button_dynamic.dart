import 'package:flutter/material.dart';

class ButtonState extends StatelessWidget {
  final String? text;
  ButtonState({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 50,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue[300]!,
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: const Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => MyApp()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text!,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
