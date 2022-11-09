import 'package:flutter/material.dart';
import 'package:shareme/screens/Login/widget/button.dart';
import 'package:shareme/screens/Login/widget/first.dart';
import 'package:shareme/screens/Login/widget/inputEmail.dart';
import 'package:shareme/screens/Login/widget/password.dart';
import 'package:shareme/screens/Login/widget/textLogin.dart';
import 'package:shareme/screens/Login/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
