import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const SettingsMainScreen(),
    );
  }
}

class SettingsMainScreen extends StatefulWidget {
  const SettingsMainScreen({super.key});

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.94),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // user card
            SimpleUserCard(
              userName: "Joe",
              userProfilePic: const NetworkImage(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3663e444-4c76-4941-840e-997e40870d22/dem57z6-8c9f7653-0f75-408e-8ab8-8153b82ae1a7.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzM2NjNlNDQ0LTRjNzYtNDk0MS04NDBlLTk5N2U0MDg3MGQyMlwvZGVtNTd6Ni04YzlmNzY1My0wZjc1LTQwOGUtOGFiOC04MTUzYjgyYWUxYTcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.fzsDdoSQvqUD00EAE1-0StkDTq7jbiJ4Hz9grjkmEYo"),
            ),
            SettingsGroup(
              items: [
                // SettingsItem(
                //   onTap: () {},
                //   icons: CupertinoIcons.pencil_outline,
                //   iconStyle: IconStyle(),
                //   title: 'Appearance',
                //   subtitle: "Make Ziar'App yours",
                // ),
                SettingsItem(
                  onTap: () {},
                  icons: Icons.fingerprint,
                  iconStyle: IconStyle(
                    iconsColor: Colors.white,
                    withBackground: true,
                    backgroundColor: Colors.red,
                  ),
                  title: 'Privacy',
                  subtitle: "Terms and Conditions",
                ),
                // SettingsItem(
                //   onTap: () {},
                //   icons: Icons.dark_mode_rounded,
                //   iconStyle: IconStyle(
                //     iconsColor: Colors.white,
                //     withBackground: true,
                //     backgroundColor: Colors.red,
                //   ),
                //   title: 'Dark mode',
                //   subtitle: "Automatic",
                //   trailing: Switch.adaptive(
                //     value: false,
                //     onChanged: (value) {},
                //   ),
                // ),
              ],
            ),
            SettingsGroup(
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.info_rounded,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.purple,
                  ),
                  title: 'About',
                  subtitle: "Know About ShareWe",
                ),
              ],
            ),
            // You can add a settings title
            SettingsGroup(
              settingsGroupTitle: "Account",
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.exit_to_app_rounded,
                  title: "Sign Out",
                ),
                SettingsItem(
                  onTap: () {},
                  icons: CupertinoIcons.repeat,
                  title: "Update Profile",
                ),
                // SettingsItem(
                //   onTap: () {},
                //   icons: CupertinoIcons.delete_solid,
                //   title: "Delete account",
                //   titleStyle: TextStyle(
                //     color: Colors.red,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
