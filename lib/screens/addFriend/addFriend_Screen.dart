import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';

class AddFriendMainScreen extends StatelessWidget {
  const AddFriendMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
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
    return Center(
      child: Center(child: Text("AddFriend Page")),
    );
  }
}
