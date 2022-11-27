import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shareme/screens/mainScreen.dart';
import 'package:shareme/screens/notifications/notifications_screen.dart';
import 'package:shareme/screens/post/postUrAdd_screen.dart';
import 'package:shareme/screens/post/post_screen.dart';
import 'package:shareme/widgets/drawer.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Image.asset(
      "assets/bg/intro.jpg",
      fit: BoxFit.fitHeight,
    ));
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavBarWidget(),
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
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.notification_add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsScreen()));
              debugPrint("Please chose Location");
            },
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.calendar_month),
            onPressed: () async {
              _selectDate(context);
              debugPrint("Please chose date");
            },
          )
        ],
        toolbarHeight: 150,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.location_on),
                            onPressed: () {
                              debugPrint("Please chose Location");
                            },
                          ),
                          const Text(
                            "Change Location",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PostYourAddScreen()));
                          },
                          child: const Text(
                            "Post Add",
                            style: TextStyle(color: Colors.white),
                          ))
                    ]),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    // height: 50,
                    child: InkWell(
                        onTap: () {
                          debugPrint("Pressed post");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen()));
                        },
                        child: Container(
                          width: (MediaQuery.of(context).size.width / 1),
                          height: (MediaQuery.of(context).size.width / 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                (MediaQuery.of(context).size.width / 20))),
                            color: Colors.white,
                          ),
                          child: const Center(
                              child: Text("Post a Request (P.A.R)",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500))),
                        )),
                  ),
                ),
              ],
            )),
        title: const Text("ShareWe"),
      ),
      drawer: const DrawerWidget(),
      body: MainScreen(),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      helpText: "Date we Remind You",
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: (MediaQuery.of(context).size.height / 2.5),
              child: Column(children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Room Shifting")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Room Vacate")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Call Roommate")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Call Owner")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Room RentPay")),
                TextButton(
                    onPressed: () {}, child: const Text("Room Shifting")),
              ]),
            ),
            title: const Text(
              'You Tried to Set Reminder for',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            // content: Text(
            //   "Ex:Room Shifting",
            //   style: TextStyle(color: Colors.black, fontSize: 12),
            // ),

            // actions: <Widget>[TextButton(onPressed: () {}, child: Text("ok"))],
          );
        },
      );
      setState(() {
        selectedDate = selected;
        debugPrint("Selected Date is $selectedDate");
      });
    }
  }
}
