import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/chatMessageModel.dart';

class ChatWe extends StatefulWidget {
  const ChatWe({super.key});

  @override
  State<ChatWe> createState() => _ChatWeState();
}

class _ChatWeState extends State<ChatWe> {
  @override
  Widget build(BuildContext context) {
    List<ChatMessage> _messages = [
      ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
      ChatMessage(
          messageContent: "How have you been?", messageType: "receiver"),
      ChatMessage(
          messageContent: "Hey Kriss, I am doing fine dude. wbu?",
          messageType: "sender"),
      ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
      ChatMessage(
          messageContent: "Is there any thing wrong?", messageType: "sender"),
    ];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 10, 2, 70),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 10, 2, 70),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3663e444-4c76-4941-840e-997e40870d22/dem57z6-8c9f7653-0f75-408e-8ab8-8153b82ae1a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzM2NjNlNDQ0LTRjNzYtNDk0MS04NDBlLTk5N2U0MDg3MGQyMlwvZGVtNTd6Ni04YzlmNzY1My0wZjc1LTQwOGUtOGFiOC04MTUzYjgyYWUxYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.fzsDdoSQvqUD00EAE1-0StkDTq7jbiJ4Hz9grjkmEYo"),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Kriss Benwat",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online/Away",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  // const Icon(
                  //   Icons.settings,
                  //   color: Colors.black54,
                  // ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: _messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (_messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (_messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Colors.blue[200]),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        _messages[index].messageContent,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Color.fromARGB(255, 10, 2, 70),
                child: Row(
                  children: <Widget>[
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Container(
                    //     height: 30,
                    //     width: 30,
                    //     decoration: BoxDecoration(
                    //       color: Colors.lightBlue,
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     child: Icon(
                    //       Icons.add,
                    //       color: Colors.white,
                    //       size: 20,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        debugPrint("send SMS");
                        setState(() {
                          _messages.add(ChatMessage(
                              messageContent: "Hello, Will",
                              messageType: "sender"));
                          debugPrint(_messages.length.toString());
                        });
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Colors.blue,
                      elevation: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
