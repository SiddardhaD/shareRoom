import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../widgets/button_dynamic.dart';
import '../home/banners.dart';

class ItemDescription extends StatefulWidget {
  const ItemDescription({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _ItemDescriptionState createState() => _ItemDescriptionState();
}

class _ItemDescriptionState extends State<ItemDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: floatingButton(),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color.fromARGB(255, 2, 0, 14),
                  Color.fromARGB(255, 10, 2, 70),
                ])),
            child: Column(
              children: <Widget>[
                appBarWhite(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Banners(),
                ),
                Container(
                    child: const Text(
                      "A style icon gets some love from one of today's top "
                      "trendsetters. Pharrell Williams puts his creative spin on these "
                      "shoes, which have all the clean, classicdetails of the beloved Stan Smith.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.5, color: Colors.white),
                    ),
                    padding: EdgeInsets.all(16)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonState(
                    text: "Location",
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget floatingButton() {
    return SpeedDial(
      marginBottom: 10, //margin bottom
      icon: Icons.menu, //icon on Floating action button
      activeIcon: Icons.close, //icon when menu is expanded on button
      backgroundColor:
          Color.fromARGB(255, 6, 242, 73), //background color of button
      foregroundColor: Colors.white, //font color, icon color in button
      activeBackgroundColor:
          Colors.deepPurpleAccent, //background color when menu is expanded
      activeForegroundColor: Colors.white,
      buttonSize: 56.0, //button size
      visible: true,
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'), // action when menu opens
      onClose: () => print('DIAL CLOSED'), //action when menu closes

      elevation: 8.0, //shadow elevation of button
      shape: CircleBorder(), //shape of button
      children: [
        // SpeedDialChild(
        //   //speed dial child
        //   child: Icon(Icons.message),
        //   backgroundColor: Colors.red,
        //   foregroundColor: Colors.white,
        //   label: 'First Menu Child',
        //   labelStyle: TextStyle(fontSize: 18.0),
        //   onTap: () => print('FIRST CHILD'),
        //   onLongPress: () => print('FIRST CHILD LONG PRESS'),
        // ),
        SpeedDialChild(
          child: Icon(Icons.message),
          labelBackgroundColor: Colors.cyanAccent,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          label: 'Chat with..',
          labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
          onTap: () => print('SECOND CHILD'),
          onLongPress: () => print('SECOND CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          labelBackgroundColor: Colors.cyanAccent,
          child: Icon(Icons.phone),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          label: 'Call..',
          labelStyle: TextStyle(fontSize: 18.0, color: Colors.white),
          onTap: () => print('THIRD CHILD'),
          onLongPress: () => print('THIRD CHILD LONG PRESS'),
        ),

        //add more menu item childs here
      ],
    );
  }

  Widget appBar() {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            color: Colors.blue,
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
              debugPrint("Message Them");
            },
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "POSTED BY",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
                ),
                Text(
                  "Peter Griffins",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F2F3E)),
                ),
              ],
            ),
          ),
          // Image.asset(
          //   "images/bag_button.png",
          //   width: 27,
          //   height: 30,
          // ),
        ],
      ),
    );
  }

  Widget appBarWhite() {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            color: Colors.blue,
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
              debugPrint("Message Them");
            },
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "POSTED BY",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.white),
                ),
                Text(
                  "Peter Griffins",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          // Image.asset(
          //   "images/bag_button.png",
          //   width: 27,
          //   height: 30,
          // ),
        ],
      ),
    );
  }
}
