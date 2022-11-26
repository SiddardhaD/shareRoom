// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glitters/glitters.dart';

import '../widgets/adverstise.dart';
import '../widgets/banners_deatils.dart';
import '../widgets/headings_with_subHeadings.dart';
import '../widgets/footer_screen.dart';
import 'home/adds.dart';
import 'home/banners.dart';
import 'home/explore.dart';
import 'home/friends.dart';
import 'home/recentPost.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 10, 2, 70),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("assets/bg/mainwall.png"),
        //         fit: BoxFit.cover)),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topRight,
        //       end: Alignment.bottomLeft,
        //       colors: [
        //         Color.fromARGB(255, 254, 254, 254),
        //         Color.fromARGB(255, 218, 238, 248),
        //       ]),
        // ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Headings(
              head: "Explore",
              body: "Get Exlpore with..",
            ),
            Explores(),
            Headings(
              head: "Posts",
              body: "Top 3 Recent Posts",
            ),
            RecentPost(),
            Headings(
              head: "Adds",
              body: "Add Based On Location",
            ),
            Adds(),
            Headings(
              head: "Houses",
              body: "Houses Based On Location",
            ),
            BannersWithDetails(),
            Headings(
              head: "Houses",
              body: "Houses Based On Location",
            ),
            Banners(),
            Headings(
              head: "1BHK",
              body: "Friends who want to share 1BHK",
            ),
            Friends(),
            Advertise(),
            Headings(
              head: "2BHK",
              body: "Friends who want to share 2BHK",
            ),
            Friends(),
            SizedBox(
              height: 50,
            ),
            FooterPageState()
          ],
        ),
      ),
    );
  }
}
