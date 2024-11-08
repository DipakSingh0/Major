import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet/firebase_options.dart';
import 'package:projet/pages/home/notification_page.dart';
import 'package:projet/widgets/theme_widget.dart';
import 'firebase_api.dart';
import 'pages/home/home_page.dart';
// import 'pages/introscreens/introduction_screen.dart';
// import 'widgets/theme_widget.dart';


  final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  BindingBase.debugZoneErrorsAreFatal = true;  // hides unnecessary O/P at terminal 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  DefaultFirebaseOptions.currentPlatform
  );
  FirebaseApi firebaseApi = FirebaseApi();
  await firebaseApi.initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:lightTheme,
         home: HomePage(),
         navigatorKey: navigatorKey,
         routes: {
          '/notification_page': (context) => const NotificationPage(),
         },
      );
  }
}


