import 'package:flutter/material.dart';
import 'package:projet/pages/home/profile_page.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('lib/assets/admin.jpg'),
                    fit: BoxFit.cover)),
            child: const Text(
              '',
              //  style: Theme.of(context).textTheme.bodyLarge,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              //  style: Theme.of(context).textTheme.bodyLarge,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.workspaces_outlined),
            title: const Text(
              'Theme',
              //  style: Theme.of(context).textTheme.bodyLarge,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              //  style: Theme.of(context).textTheme.bodyLarge,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
