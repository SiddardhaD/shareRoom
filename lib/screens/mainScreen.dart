// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 70, top: 15, bottom: 15),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add Location',
                      hintText: 'Location',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: IconButton(
                    color: Colors.cyan,
                    icon: Icon(Icons.location_on),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
