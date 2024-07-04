// theme_widget.dart
import 'package:flutter/material.dart';

class ThemeWidget extends StatefulWidget {
  final Widget child;

  const ThemeWidget(
      {super.key,
      required this.child,
      required bool debugShowCheckedModeBanner});

  @override
  _ThemeWidgetState createState() => _ThemeWidgetState();

  // ignore: library_private_types_in_public_api
  static _ThemeWidgetState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeWidgetState>();
  }

  // implemented themes as static properties
  // i.e can be shared without instanting theme class
  // acces directly through class name
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
