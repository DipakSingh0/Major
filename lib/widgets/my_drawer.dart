import 'package:flutter/material.dart';
import 'package:projet/pages/others/contacts_page.dart';
import 'package:projet/pages/others/notifications_page.dart';
import 'package:projet/pages/others/profile_page.dart';
import 'package:projet/pages/others/settings_page.dart';

// import 'my_header_drawer.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var currentPage = DrawerSections.homepage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyHeaderDrawer(),
            myDrawerList(),
          ],
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Column(
      children: [
        menuItem(1, "Profile", Icons.dashboard_outlined,
            currentPage == DrawerSections.homepage ? true : false),
        menuItem(2, "Contacts", Icons.perm_contact_calendar_rounded,
            currentPage == DrawerSections.homepage ? true : false),
        menuItem(3, "Notifications", Icons.notifications,
            currentPage == DrawerSections.homepage ? true : false),
        menuItem(4, "Settings", Icons.settings,
            currentPage == DrawerSections.homepage ? true : false),
        menuItem(5, "Privacy Policy", Icons.privacy_tip_sharp,
            currentPage == DrawerSections.homepage ? true : false),
        menuItem(6, "Send Feedback", Icons.feedback,
            currentPage == DrawerSections.homepage ? true : false),
      ],
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
        color: selected ? Colors.blue[300] : Colors.transparent,
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {
                if (id == 1) {
                  currentPage = DrawerSections.homepage;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                } else if (id == 2) {
                  currentPage = DrawerSections.contacts;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactsPage()));
                } else if (id == 3) {
                  currentPage = DrawerSections.notifications;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationsPage()));
                } else if (id == 4) {
                  currentPage = DrawerSections.settings;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                } else if (id == 5) {
                  currentPage = DrawerSections.privacypolicy;
                } else {
                  currentPage = DrawerSections.sendfeedback;
                }
              });
            },
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      icon,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Expanded(
                    flex: 4,
                    child: Text(title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
            )));
  }
}

enum DrawerSections {
  homepage,
  profile,
  contacts,
  notifications,
  settings,
  privacypolicy,
  sendfeedback
}

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/admin.jpg',
                    ),
                  )),
            ),
            Text(
              'Nirantar',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 25,
              ),
            ),
            Text(
              'nirantar123@gmail.com',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}
