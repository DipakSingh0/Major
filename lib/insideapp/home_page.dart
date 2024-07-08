import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:projet/widgets/theme_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final double maxSlide = 225.0;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleDrawer() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  @override
  Widget build(BuildContext context) {
    final themeState = ThemeWidget.of(context);

    var myDrawer = Container(
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
                padding: EdgeInsets.only(left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 52,
                      // backgroundImage: Image(image: Asssets/b.jpg),
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
              print("profileTapped!!");
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
                        leading: const Icon(Icons.circle, color: Colors.red),
                        title: const Text('Red'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.redTheme);
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.circle, color: Colors.orange),
                        title: const Text('Orange'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.orangeTheme);
                          Navigator.of(context).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.circle, color: Colors.purple),
                        title: const Text('Purple'),
                        onTap: () {
                          themeState?.switchTheme(ThemeWidget.purpleTheme);
                          Navigator.of(context).pop();
                        },
                      ),
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
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title:
                const Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              print("tapped!!");
            },
          ),
        ],
      ),
    );

    var myChild = Container(color: Theme.of(context).scaffoldBackgroundColor);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: const [
          Icon(
            Icons.search_outlined,
          ),
          Icon(
            Icons.home_outlined,
          ),
          Icon(
            Icons.settings_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: IconButton(
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
          ),
          onPressed: toggleDrawer,
        ),
      ),
      body: AnimatedBuilder(
        
        animation: _animationController,
        builder: (context, _) {
          double slide = maxSlide * _animationController.value;
          double scale = 1 - (_animationController.value * 0.3);

          return Stack(
            children: <Widget>[
              myDrawer,
              Transform(
                transform: Matrix4.identity()
                  ..translate(slide)
                  ..scale(scale),
                alignment: Alignment.centerLeft,
                child: myChild,
              ),

      
              // _BlurryContainer(),



            ],
          );
        },
      ),
    );
  }

  Widget _BlurryContainer() {
    return Center(
      child: BlurryContainer(
        // color: Colors.lightBlue,
        shadowColor: Colors.blue,
        child: IconButton(
          icon: Icon(Icons.person, size: 60),
          onPressed: () {},
        ),
        blur: 5,
        width: 400,
        height: 200,
        elevation: 0,
      
        color: Colors.transparent,
        padding: const EdgeInsets.all(8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
