import 'package:flutter/material.dart';
import 'package:shareme/screens/post/pg_screen.dart';
import 'package:shareme/screens/post/room_screen.dart';

import 'house_screen.dart';

class PostScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PostScreenState();
  }
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg/appbar.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Text("Room")),
              Tab(icon: Text("House")),
              Tab(icon: Text("PG")),
            ],
          ),
          title: Align(
              alignment: Alignment.topRight,
              child: const Text(
                'Post',
                style: TextStyle(fontSize: 18),
              )),
        ),
        body: TabBarView(
          children: [
            RoomScreen(),
            HouseScreen(),
            PGScreen(),
          ],
        ),
      ),
    );
  }
}
