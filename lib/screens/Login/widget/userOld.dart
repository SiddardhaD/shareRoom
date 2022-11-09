import 'package:flutter/material.dart';
import 'package:shareme/screens/Login/login_screen.dart';

class UserOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        // height: 20,
        child: Row(
          children: <Widget>[
            const Text(
              'Have we met before?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text(
                'Sing in',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
