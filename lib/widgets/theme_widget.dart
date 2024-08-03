import 'package:flutter/material.dart';


// class BodyThemeData{
//   final Color backgroundColor;

//   const BodyThemeData({required this.backgroundColor});
// }
class ThemeWidget extends StatefulWidget {
  final Widget child;

  const ThemeWidget({super.key,
    required this.child, 
    required bool debugShowCheckedModeBanner,
  });



  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();


  static _ThemeWidgetState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeWidgetState>();
  }

  static final ThemeData blueTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.blue,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blue,
    ),

    // bodyTheme :  BodyThemeData(
    //   backgroundColor: Colors.lightBlue.shade500,
    // ),

    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //       fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.blue),
    //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.blue),
    // ),
   
    // containerTheme: const ContainerTheme(
    //   backgroundColor: Colors.blue.shade100,
    // ),
  );

  static final ThemeData redTheme = ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.red,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.red,
    ),
    //  bodyBackgroundTheme : const bodyBackgroundTheme(
    //   backgroundColor: Colors.red.shade100
    // ),
    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //       fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.red),
    //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.red),
    // ),
   
   
   
    //   containerTheme: const ContainerTheme(
    //   backgroundColor: Colors.red.shade100,
    // ),
  );

  static final ThemeData orangeTheme = ThemeData(
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.orange,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.orange,
    ),
    //  bodyBackgroundTheme : const bodyBackgroundTheme(
    //   backgroundColor: Colors.lightBlue.shade100;
    // ),
    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //       fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.orange),
    //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.orange),
    // ),
   
   
   
    // containerTheme: const ContainerTheme(
    //   backgroundColor: Colors.orange.shade100,
    // ),
  );

  static final ThemeData blackTheme = ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
    ),
    //  bodyBackgroundTheme : const bodyBackgroundTheme(
    //   backgroundColor: Colors.lightBlue.shade100;
    // ),
    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //       fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
    // ),
    
    
    // containerTheme: const ContainerTheme(
    //   backgroundColor: Colors.black.shade100,
    // ),
  );

  static final ThemeData purpleTheme = ThemeData(
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.purple,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.purple,
    ),
    //  bodyBackgroundTheme : const bodyBackgroundTheme(
    //   backgroundColor: Colors.lightBlue.shade100;
    // ),
    // textTheme: const TextTheme(
    //   headline1: TextStyle(
    //       fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.purple),
    //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.purple),
    // ),
    
    
    
    // containerTheme: const ContainerTheme(
    //   backgroundColor: Colors.purple.shade100,
    // ),
  );
}

class _ThemeWidgetState extends State<ThemeWidget> {
  ThemeData _currentTheme = ThemeWidget.blueTheme;

  void switchTheme(ThemeData theme) {
    setState(() {
      _currentTheme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _currentTheme,
      home: widget.child,
    );
  }
}
