import 'package:flutter/material.dart';
import 'pages/loginpages/loginpages/login_page.dart';
import 'widgets/theme_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: const ThemeWidget(
        debugShowCheckedModeBanner: false,
         child: LoginPage(),
      
      ),
    );
  }
}


