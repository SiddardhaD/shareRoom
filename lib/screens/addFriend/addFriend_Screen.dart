import 'dart:ui';

import 'package:flutter/material.dart';
import '../../widgets/drawer.dart';
import '../../widgets/spinner.dart';
import '../Login/widget/button.dart';
import '../Login/widget/referralId.dart';
import '../Login/widget/textLogin.dart';
import '../Login/widget/verticalText.dart';

class AddFriendMainScreen extends StatelessWidget {
  const AddFriendMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Welcome, Buddy"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const AddFriendScreen(),
    );
  }
}

class AddFriendScreen extends StatefulWidget {
  const AddFriendScreen({super.key});

  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Stack(
                  children: [
                    MyStatefulWidget(),
                    BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 10.0),
                        child: Image.asset(
                          "assets/bg/invite.png",
                          height: MediaQuery.of(context).size.height / 4,
                        )),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Your Referral ID",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ReferralID(),
              const SizedBox(
                height: 20,
              ),
              ReferButton(),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height / 10),
                child: Row(children: <Widget>[
                  VerticalTextDynamic(
                    title: 'INVITE WE',
                  ),
                  HorizontalTextDynamic(
                      title:
                          'Invite your Bachelor Friends to share your Room and Rent'),
                ]),
              ),
            ],
          ),
        ]));
  }
}
