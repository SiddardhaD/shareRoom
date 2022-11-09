import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';
import '../inbox/chat_screen.dart';

class FavoritesMainScreen extends StatelessWidget {
  const FavoritesMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const FavoritesScreen(),
    );
  }
}

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//AppBar
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 20),
        child: Center(
          /** Card Widget **/
          child: Column(
            children: [
              //Card 1
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 310,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 108,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://static.wikia.nocookie.net/familyguy/images/f/f1/Griffin_Home.jpg/revision/latest?cb=20090614171921"),
                            //NetworkImage
                            radius: 100,
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          '2BHK in Kondapur',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Posted By',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Peter Griffins',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green[900],
                                ), //Textstyle
                              )
                            ]), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              child: TextButton(
                                onPressed: () {},
                                // : Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.location_on),
                                      Text('Map'),
                                    ],
                                  ), //Row
                                ), //Padding
                              ), //RaisedButton
                            ),
                            IconButton(
                              color: Colors.blue,
                              icon: const Icon(Icons.message_sharp),
                              onPressed: () {
                                debugPrint("Message Them");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ChatWe()),
                                );
                              },
                            ),
                            FavoriteButton(
                              iconSize: 35,
                              isFavorite: false,
                              valueChanged: (_isFavorite) {
                                debugPrint('Is Favorite : $_isFavorite');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Card 2
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 310,
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 108,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://static.wikia.nocookie.net/oggyandthecockroaches/images/e/ea/Oggy%27s_House.png/revision/latest?cb=20210401014131"),
                            //NetworkImage
                            radius: 100,
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          '2BHK in Kondapur',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Posted By',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green[900],
                                ), //Textstyle
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Peter Griffins',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green[900],
                                ), //Textstyle
                              )
                            ]), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100,
                              child: TextButton(
                                onPressed: () {},
                                // : Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.location_on),
                                      Text('Map'),
                                    ],
                                  ), //Row
                                ), //Padding
                              ), //RaisedButton
                            ),
                            IconButton(
                              color: Colors.blue,
                              icon: const Icon(Icons.message_sharp),
                              onPressed: () {
                                debugPrint("Message Them");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ChatWe()),
                                );
                              },
                            ),
                            FavoriteButton(
                              iconSize: 35,
                              isFavorite: false,
                              valueChanged: (_isFavorite) {
                                debugPrint('Is Favorite : $_isFavorite');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
              // Card(
              //   elevation: 50,
              //   shadowColor: Colors.black,
              //   color: Colors.yellowAccent[100],
              //   child: SizedBox(
              //     width: 310,
              //     height: 510,
              //     child: Padding(
              //       padding: const EdgeInsets.all(20.0),
              //       child: Column(
              //         children: [
              //           CircleAvatar(
              //             backgroundColor: Colors.yellow[700],
              //             radius: 108,
              //             child: const CircleAvatar(
              //               backgroundImage: NetworkImage(
              //                   "https://static.wikia.nocookie.net/oggyandthecockroaches/images/e/ea/Oggy%27s_House.png/revision/latest?cb=20210401014131"),
              //               //NetworkImage
              //               radius: 100,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           Text(
              //             'GeeksforGeeks',
              //             style: TextStyle(
              //               fontSize: 30,
              //               color: Colors.yellow[900],
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           Text(
              //             'GeeksforGeeks is a computer science portalfor geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
              //             style: TextStyle(
              //               fontSize: 15,
              //               color: Colors.yellow[900],
              //             ), //Textstyle
              //           ), //Text
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               SizedBox(
              //                 width: 100,
              //                 child: TextButton(
              //                   onPressed: () {},
              //                   // color: Colors.yellow[600],
              //                   child: Padding(
              //                     padding: const EdgeInsets.all(4.0),
              //                     child: Row(
              //                       children: const [
              //                         Icon(Icons.touch_app),
              //                         Text('Visit'),
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               FavoriteButton(
              //                 isFavorite: true,
              //                 valueChanged: (_isFavorite) {
              //                   debugPrint('Is Favorite : $_isFavorite');
              //                 },
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
