import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glitters/glitters.dart';

import '../../main.dart';
import '../../widgets/chatMessageModel.dart';
import '../../widgets/dilogbox.dart';

class MyAddPost extends StatefulWidget {
  const MyAddPost({super.key});

  @override
  State<MyAddPost> createState() => _MyAddPostState();
}

class _MyAddPostState extends State<MyAddPost> {
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
          Text("Yours Adds")
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
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: ListView.separated(
                  itemCount: _feedItems.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final _item = _feedItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _AvatarImage(_item.user.imageUrl),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: _item.user.fullName,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        TextSpan(
                                          text: " @${_item.user.userName}",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ]),
                                    )),
                                    Text('· 5m',
                                        style: TextStyle(color: Colors.white)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Icon(
                                        Icons.more_horiz,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                if (_item.content != null)
                                  Text(
                                    _item.content!,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                if (_item.imageUrl != null)
                                  Container(
                                    height: 200,
                                    margin: const EdgeInsets.only(top: 8.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(_item.imageUrl!),
                                        )),
                                  ),
                                _ActionsRow(item: _item)
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
            // ListView.builder(
            //   itemCount: 5,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Center(
            //         child: Container(
            //           constraints: const BoxConstraints(maxWidth: 400),
            //           child: ListView.separated(
            //             itemCount: _feedItems.length,
            //             separatorBuilder: (BuildContext context, int index) {
            //               return const Divider();
            //             },
            //             itemBuilder: (BuildContext context, int index) {
            //               final _item = _feedItems[index];
            //               return Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     _AvatarImage(_item.user.imageUrl),
            //                     const SizedBox(width: 16),
            //                     Expanded(
            //                       child: Column(
            //                         mainAxisAlignment: MainAxisAlignment.start,
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         children: [
            //                           Row(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: [
            //                               Expanded(
            //                                   child: RichText(
            //                                 overflow: TextOverflow.ellipsis,
            //                                 text: TextSpan(children: [
            //                                   TextSpan(
            //                                     text: _item.user.fullName,
            //                                     style: const TextStyle(
            //                                         fontWeight: FontWeight.bold,
            //                                         fontSize: 16,
            //                                         color: Colors.black),
            //                                   ),
            //                                   TextSpan(
            //                                     text:
            //                                         " @${_item.user.userName}",
            //                                     style: Theme.of(context)
            //                                         .textTheme
            //                                         .subtitle1,
            //                                   ),
            //                                 ]),
            //                               )),
            //                               Text('· 5m',
            //                                   style: Theme.of(context)
            //                                       .textTheme
            //                                       .subtitle1),
            //                               const Padding(
            //                                 padding: EdgeInsets.only(left: 8.0),
            //                                 child: Icon(Icons.more_horiz),
            //                               )
            //                             ],
            //                           ),
            //                           if (_item.content != null)
            //                             Text(_item.content!),
            //                           if (_item.imageUrl != null)
            //                             Container(
            //                               height: 200,
            //                               margin:
            //                                   const EdgeInsets.only(top: 8.0),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(8.0),
            //                                   image: DecorationImage(
            //                                     fit: BoxFit.cover,
            //                                     image: NetworkImage(
            //                                         _item.imageUrl!),
            //                                   )),
            //                             ),
            //                           _ActionsRow(item: _item)
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               );
            //             },
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // )
          ]),
        ),
      ),
    );
  }
}

class _AvatarImage extends StatelessWidget {
  final String url;
  const _AvatarImage(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(url))),
    );
  }
}

class _ActionsRow extends StatelessWidget {
  final FeedItem item;
  const _ActionsRow({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.grey, size: 18),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye_outlined),
            label: Text(
                item.commentsCount == 0 ? '' : item.commentsCount.toString()),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share),
            label: Text(
                item.retweetsCount == 0 ? '' : item.retweetsCount.toString()),
          ),
          // TextButton.icon(
          //   onPressed: () {},
          //   icon: const Icon(Icons.favorite_border),
          //   label: Text(item.likesCount == 0 ? '' : item.likesCount.toString()),
          // ),
          IconButton(
            icon: const Icon(CupertinoIcons.delete),
            onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DialogFb1(
                    title: "Delete",
                    subTitle: "Are You Sure?",
                  );
                }),
          )
        ],
      ),
    );
  }
}

class FeedItem {
  final String? content;
  final String? imageUrl;
  final User user;
  final int commentsCount;
  final int likesCount;
  final int retweetsCount;

  FeedItem(
      {this.content,
      this.imageUrl,
      required this.user,
      this.commentsCount = 0,
      this.likesCount = 0,
      this.retweetsCount = 0});
}

class User {
  final String fullName;
  final String imageUrl;
  final String userName;

  User(
    this.fullName,
    this.userName,
    this.imageUrl,
  );
}

final List<User> _users = [
  User(
    "John Doe",
    "john_doe",
    "https://picsum.photos/id/1062/80/80",
  ),
  User(
    "Jane Doe",
    "jane_doe",
    "https://picsum.photos/id/1066/80/80",
  ),
  User(
    "Jack Doe",
    "jack_doe",
    "https://picsum.photos/id/1072/80/80",
  ),
  User(
    "Jill Doe",
    "jill_doe",
    "https://picsum.photos/id/133/80/80",
  )
];

final List<FeedItem> _feedItems = [
  FeedItem(
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
    user: _users[0],
    imageUrl: "https://picsum.photos/id/1000/960/540",
    likesCount: 100,
    commentsCount: 10,
    retweetsCount: 1,
  ),
  FeedItem(
      user: _users[1],
      imageUrl: "https://picsum.photos/id/1001/960/540",
      likesCount: 10,
      commentsCount: 2),
  FeedItem(
      user: _users[0],
      content:
          "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
      likesCount: 50,
      commentsCount: 22,
      retweetsCount: 30),
  FeedItem(
      user: _users[1],
      content:
          "Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.",
      imageUrl: "https://picsum.photos/id/1002/960/540",
      likesCount: 500,
      commentsCount: 202,
      retweetsCount: 120),
  FeedItem(
    user: _users[2],
    content: "Good morning!",
    imageUrl: "https://picsum.photos/id/1003/960/540",
  ),
  FeedItem(
    user: _users[1],
    imageUrl: "https://picsum.photos/id/1004/960/540",
  ),
  FeedItem(
    user: _users[3],
    imageUrl: "https://picsum.photos/id/1005/960/540",
  ),
  FeedItem(
    user: _users[0],
    imageUrl: "https://picsum.photos/id/1006/960/540",
  ),
];
