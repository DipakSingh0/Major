// main.dart
import 'package:flutter/material.dart';
import 'package:projet/introscreens/introduction_screen.dart';
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
       child: IntroScreen(),
    );
  }
}




// import 'package:flutter/material.dart';
// // import 'package:projet/loginpages/authentication_page.dart';
// import 'package:projet/introduction_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Nirantar App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const IntroScreen(), 
//       // routes: {
//       //   '/Authentication': (context) => const AuthenticationPage(),
//       //   '/introduction': (context) => const IntroScreen(),
//       // },
//     );
//   }
// }


