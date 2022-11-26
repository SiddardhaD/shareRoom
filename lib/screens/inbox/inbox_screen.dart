import 'package:flutter/material.dart';

import '../../widgets/chatMessageModel.dart';
import '../../widgets/drawer.dart';

class InboxMainScreen extends StatelessWidget {
  const InboxMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
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
        title: const Text("Inbox"),
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
    List<ChatUsers> chatUsers = [
      ChatUsers(
          text: "Stewie",
          secondaryText: "Awesome Setup",
          image:
              "https://static.wikia.nocookie.net/familyguy/images/9/90/FamilyGuy_Single_StewieBackpack_R7.jpg/revision/latest?cb=20200526171841",
          time: "Now"),
      ChatUsers(
          text: "Loise",
          secondaryText: "That's Great",
          image:
              "https://static.wikia.nocookie.net/p__/images/a/a5/Lois_Griffin.png/revision/latest/top-crop/width/360/height/360?cb=20220623035732&path-prefix=protagonist",
          time: "Yesterday"),
      ChatUsers(
          text: "Braine",
          secondaryText: "Hey where are you?",
          image:
              "https://i.cbc.ca/1.2439270.1385396617!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/family-guy-brian-from-fox.jpg",
          time: "31 Mar"),
      ChatUsers(
          text: "Meg",
          secondaryText: "Busy! Call me in 20 mins",
          image:
              "https://static.wikia.nocookie.net/villains/images/c/c7/Meg_Griffin.png/revision/latest/top-crop/width/360/height/360?cb=20220612130102",
          time: "28 Mar"),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 2, 70),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chats",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  text: chatUsers[index].text!,
                  messageText: chatUsers[index].secondaryText!,
                  imageUrl: chatUsers[index].image!,
                  time: chatUsers[index].time!,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ConversationList extends StatefulWidget {
  String text;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConversationList(
      {required this.text,
      required this.messageText,
      required this.imageUrl,
      required this.time,
      required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(widget.imageUrl),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.text,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.messageText,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: widget.isMessageRead
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
