import 'package:flutter/material.dart';
import 'package:projet/widgets/theme_widget.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeState = ThemeWidget.of(context);

    return Container(
      color: Theme.of(context).drawerTheme.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 52,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Admin",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text('Profile', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Add action here if needed
            },
          ),
          ListTile(
            leading: const Icon(Icons.color_lens, color: Colors.white),
            title: const Text('Theme', style: TextStyle(color: Colors.white)),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Choose Theme'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.circle, color: Colors.blue),
                        title: const Text('Blue'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.blueTheme);
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.circle, color: Colors.brown),
                        title: const Text('light'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.lightTheme);
                          Navigator.of(context).pop();
                        },
                      ),
                      // ListTile(
                      //   leading: const Icon(Icons.circle, color: Colors.orange),
                      //   title: const Text('Orange'),
                      //   onTap: () {
                      //     themeState?.switchTheme(ThemeWidget.orangeTheme);
                      //     Navigator.of(context).pop();
                      //   },
                      // ),
                      // ListTile(
                      //   leading: const Icon(Icons.circle, color: Colors.purple),
                      //   title: const Text('Purple'),
                      //   onTap: () {
                      //     themeState?.switchTheme(ThemeWidget.purpleTheme);
                      //     Navigator.of(context).pop();
                      //   },
                      // ),
                      ListTile(
                        leading: const Icon(Icons.circle, color: Colors.black),
                        title: const Text('Black'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.blackTheme);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title:
                const Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              // Add action here if needed
            },
          ),
        ],
      ),
    );
  }
}
