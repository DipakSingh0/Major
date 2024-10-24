import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projet/firebase_options.dart';
import 'pages/loginpages/login_page.dart';
import 'widgets/theme_widget.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeWidget(
        debugShowCheckedModeBanner: false,
         child: LoginPage(),
      ),
    );
  }
}


