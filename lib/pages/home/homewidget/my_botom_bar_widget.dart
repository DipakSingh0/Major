// my_bottom_bar_widget.dart
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/pages/home/pages/notification_page.dart';
import 'package:projet/pages/home/pages/profile_page.dart';

import '../home_page.dart';

class MyBottomBarWidget extends StatelessWidget {
  const MyBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
      animationDuration: const Duration(milliseconds: 300),
      onTap: (index) {
        switch (index) {
          case 0:
            // Navigate to the search page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
            break;
          case 1:
            // Navigate to the home page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            break;
          case 2:
            // Navigate to the notifications page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            );
            break;
        }
        // Handle bottom navigation item taps
      },
      items: const [
        Icon(Icons.search_outlined),
        Icon(Icons.home_outlined),
        Icon(Icons.notification_important),
      ],
    );
  }
}
