// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/headings_with_subHeadings.dart';
import '../widgets/footer_screen.dart';
import 'home/adds.dart';
import 'home/banners.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Headings(
              head: "Adds",
              body: "Add Based On Location",
            ),
            Adds(),
            Headings(
              head: "Banners",
              body: "Banners Based On Location",
            ),
            Banners(),
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
