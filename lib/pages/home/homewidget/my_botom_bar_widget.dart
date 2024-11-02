// my_bottom_bar_widget.dart
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyBottomBarWidget extends StatelessWidget {
  const MyBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
      animationDuration: const Duration(milliseconds: 300),
      onTap: (index) {
        // Handle bottom navigation item taps
      },
      items: const [
        Icon(Icons.search_outlined),
        Icon(Icons.home_outlined),
        Icon(Icons.settings_outlined),
      ],
    );
  }
}
