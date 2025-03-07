import 'package:donoaid/firebase/auth_frb.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          // ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icons.person,
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: Icons.notifications,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.help,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icons.logout,
            press: () {
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}
