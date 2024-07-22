// main.dart
import 'package:flutter/material.dart';
import 'package:projet/insideapp/home_page.dart';
import 'package:projet/introscreens/introduction_screen.dart';
// import 'package:projet/introscreens/introduction_screen.dart';
// import 'home_page.dart';
import 'widgets/theme_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThemeWidget(
      debugShowCheckedModeBanner: false,
      //  child: IntroScreen(),
       child:IntroScreen(),

    );
  }
}


