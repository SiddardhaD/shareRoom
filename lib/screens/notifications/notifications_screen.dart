import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Welcome, Buddy"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const NotificationsMainScreen(),
    );
  }
}

class NotificationsMainScreen extends StatefulWidget {
  const NotificationsMainScreen({super.key});

  @override
  State<NotificationsMainScreen> createState() =>
      _NotificationsMainScreenState();
}

class _NotificationsMainScreenState extends State<NotificationsMainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Center(child: Text("Notifications Page")),
    );
  }
}
