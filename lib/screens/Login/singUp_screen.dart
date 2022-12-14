import 'package:flutter/material.dart';
import 'package:shareme/screens/Login/widget/buttonNewUser.dart';
import 'package:shareme/screens/Login/widget/newEmail.dart';
import 'package:shareme/screens/Login/widget/newName.dart';
import 'package:shareme/screens/Login/widget/password.dart';
import 'package:shareme/screens/Login/widget/singup.dart';
import 'package:shareme/screens/Login/widget/textNew.dart';
import 'package:shareme/screens/Login/widget/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
