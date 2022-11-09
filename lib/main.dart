import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shareme/screens/mainScreen.dart';
import 'package:shareme/widgets/drawer.dart';

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
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Stack(children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 70, top: 15, bottom: 15),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.white), //<-- SEE HERE
                        ),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Add Location',
                        hintText: 'Location',
                        labelStyle: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.location_on),
                    onPressed: () {
                      debugPrint("Please chose Location");
                    },
                  ),
                ),
              )
            ])),
        title: const Text("Welcome, Buddy"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: const DrawerWidget(),
      body: const MainScreen(),
    );
  }
}
