import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';

class InboxMainScreen extends StatelessWidget {
  const InboxMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text("Welcome, Buddy"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const InbonScreens(),
    );
  }
}

class InbonScreens extends StatefulWidget {
  const InbonScreens({super.key});

  @override
  State<InbonScreens> createState() => _InbonScreensState();
}

class _InbonScreensState extends State<InbonScreens> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(child: Text("Inbox Page")),
    );
  }
}
