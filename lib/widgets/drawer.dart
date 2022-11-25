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
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Home')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Inbox')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Favorites')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Notifications')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Add Friends')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Settings')
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
              ),
              const SizedBox(
                width: 20,
              ),
              const Text('Login')
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
