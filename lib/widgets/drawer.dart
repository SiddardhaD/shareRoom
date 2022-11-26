import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/Login/login_screen.dart';
import '../screens/addFriend/addFriend_Screen.dart';
import '../screens/favorites/favorites_screen.dart';
import '../screens/inbox/inbox_screen.dart';
import '../screens/notifications/notifications_screen.dart';
import '../screens/settings/settings_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      backgroundColor: Color.fromARGB(255, 10, 2, 70),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 10, 2, 70),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: CachedNetworkImage(
                placeholder: (context, url) => Image.asset(
                  'assets/bg/pc.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                fit: BoxFit.fitHeight,
                imageUrl:
                    'https://vignette.wikia.nocookie.net/familyguy/images/9/90/FamilyGuy_Single_StewieBackpack_R7.jpg/revision/latest/scale-to-width-down/2000?cb=20200526171841',
                errorWidget: (c, o, s) =>
                    const CircleAvatar(child: Icon(Icons.person, size: 35)),
              ),
            ),
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.home,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.message,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Inbox',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InboxMainScreen()));
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Favorites',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavoritesMainScreen()));
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsScreen()));
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Add Friends',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddFriendMainScreen()));
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            // ignore: prefer_const_literals_to_create_immutables
            title: Row(children: [
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              )
            ]),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
