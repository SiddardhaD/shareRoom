import 'package:cached_network_image/cached_network_image.dart';
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
        shadowColor: Colors.black,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg/appbar.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromARGB(255, 2, 0, 14),
            Color.fromARGB(255, 10, 2, 70),
          ])),
      child: Center(
          child: ListView.builder(
        itemCount: 15,
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 10, 2, 70),
                  border: Border.all(
                    color: Color.fromARGB(255, 10, 2, 70), //color of border
                    width: 2, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)),
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              // margin: EdgeInsets.only(bottom: 5),
              // color: Colors.black,
              child: ListTile(
                leading: ClipOval(
                    child: CachedNetworkImage(
                  placeholder: (context, url) => Image.asset(
                    "assets/bg/loading.jpg",
                    fit: BoxFit.cover,
                  ),
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://play-zelo-production.s3.ap-south-1.amazonaws.com/uploads/center/cover_photo/5d402f7b2b71e95588f482fe/Zolo_Amuse___PG_in_Kharadi_Pune.jpg',
                  errorWidget: (c, o, s) => Image.asset("assets/bg/loading.jpg",
                      height: 50, width: 50, fit: BoxFit.cover),
                )),
                title: Text("Notification",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                subtitle: Text(
                  "Sub Notification",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
