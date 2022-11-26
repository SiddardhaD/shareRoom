import 'package:flutter/material.dart';
import 'package:glitters/glitters.dart';

import '../../main.dart';
import '../../widgets/chatMessageModel.dart';

class MyPost extends StatefulWidget {
  const MyPost({super.key});

  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
        title: Row(children: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )),
          Text("Your Requests")
        ]),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color.fromARGB(255, 10, 2, 70),
                Color.fromARGB(255, 2, 0, 14),
              ])),
          constraints: const BoxConstraints(maxWidth: 400),
          child: Stack(children: [
            const GlitterStack(
              width: 1000,
              backgroundColor: Color.fromARGB(255, 10, 2, 70),
              duration: Duration(milliseconds: 200),
              interval: Duration.zero,
              color: Color.fromARGB(255, 10, 2, 70),
              maxOpacity: 0.7,
              children: [
                Glitters(
                  color: Colors.orange,
                ),
                Glitters(
                  delay: Duration(milliseconds: 100),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LikeListTile(
                    title: "2bhk",
                    likes: "130",
                    subtitle: "Posted on 20-5-2022",
                    imgUrl:
                        "https://media.istockphoto.com/photos/indian-high-school-student-using-computer-in-modern-lab-classroom-picture-id520686525?k=6&m=520686525&s=612x612&w=0&h=ZCni184rKAHdV2m9hr3c1rK4zE76pueEtfSHUPu8EQ0=",
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}

class LikeListTile extends StatelessWidget {
  const LikeListTile(
      {Key? key,
      required this.title,
      required this.likes,
      required this.subtitle,
      required this.imgUrl,
      this.color = Colors.grey})
      : super(key: key);
  final String title;
  final String likes;
  final String subtitle;
  final Color color;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Container(
          width: 50,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Posted for PG",
                    style: TextStyle(color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                    "I am Loaking for Single bed room flat with a girl or boy who ever is convinient with me",
                    style: TextStyle(color: Colors.white))),
          )
        ]),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.remove_red_eye,
                  color: Color.fromARGB(255, 6, 242, 73), size: 20),
            ),
            SizedBox(
              width: 3,
            ),
            Text(likes, style: TextStyle(color: Colors.white)),
            Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(width: 4, height: 4),
                )),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Color.fromARGB(255, 6, 242, 73),
          ),
          onPressed: () {},
        )
        // LikeButton(onPressed: () {}, color: Color.fromARGB(255, 6, 242, 73)),
        );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {Key? key, required this.onPressed, this.color = Colors.black12})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
