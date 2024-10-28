import 'package:flutter/material.dart';
class ThemeWidget extends StatefulWidget {
  final Widget child;
  final bool debugShowCheckedModeBanner;

  const ThemeWidget({
    super.key,
    required this.child, 
    // required bool debugShowCheckedModeBanner, 
    this.debugShowCheckedModeBanner = false,
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

    // cardTheme: const CardTheme(
    //   color: Colors.blue, // Set your default color for containers here
    // ),
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   secondary: Colors
    //       .blueAccent, // Sets an accent color for any widgets using color schemes
    // ),
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.blueGrey,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blueGrey,
    ),
    //  cardTheme: const CardTheme(
    //   color: Colors.blueGrey, // Set your default color for containers here
    // ),
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   secondary: Colors
    //       .blueGrey, // Sets an accent color for any widgets using color schemes
    // ),
    
  );

  // static final ThemeData orangeTheme = ThemeData(
  //   primaryColor: Colors.orange,
  //   scaffoldBackgroundColor: Colors.white,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.orange,
  //     foregroundColor: Colors.white,
  //   ),
  //   drawerTheme: const DrawerThemeData(
  //     backgroundColor: Colors.orange,
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     backgroundColor: Colors.orange,
  //   ),
    
  // );

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
    //  cardTheme: const CardTheme(
    //   color: Colors.black, // Set your default color for containers here
    // ),
    // colorScheme: ColorScheme.fromSwatch().copyWith(
    //   secondary: Colors
    //       .black, // Sets an accent color for any widgets using color schemes
    // ),

    
  );

  // static final ThemeData purpleTheme = ThemeData(
  //   primaryColor: Colors.purple,
  //   scaffoldBackgroundColor: Colors.white,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.purple,
  //     foregroundColor: Colors.white,
  //   ),
  //   drawerTheme: const DrawerThemeData(
  //     backgroundColor: Colors.purple,
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     backgroundColor: Colors.purple,
  //   ),
    
  // );
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
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      home: widget.child,
    );
  }
}
