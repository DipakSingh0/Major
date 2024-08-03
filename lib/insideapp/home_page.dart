import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/users/user1.dart';
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
                padding: EdgeInsets.only(left: 55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 52,
                      // backgroundImage: AssetImage('asssets/admin.jpg'),
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
              // print("profileTapped!!");
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
          // const SizedBox(height: 10),
          
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


      
      var myChild = Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        // color: Theme.of(context).BodyThemeData,
      // color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                     GestureDetector(
                      onTap: (){
                        Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const User1()),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.brown[100],
                          borderRadius: BorderRadius.circular(40),
                           boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 6,
                              spreadRadius: 1.0,
                            )
                          ],
                        ),
                        margin: const EdgeInsets.only(top: 16.0),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 14.0),
                          child: Text(
                            'UserName',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                      color: Colors.brown[100],
                      borderRadius: BorderRadius.circular(40),
                       boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3), 
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0 , -4.0),
                            blurRadius: 6,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 16.0),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 18.0, top: 14.0),
                        child: Column(
                          children: [
                            Text(
                              'UserName',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed:() {

                            // }, child: Text('Edit'),
                            // ),
                          ],
                        ),
                      ),
                    ),
                     Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.brown[100],
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 6,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 16.0),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 18.0, top: 14.0),
                        child: Text(
                          'UserName',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.brown[100],
                        borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 6,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 16.0),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14.0, top: 14.0),
                        child: Text(
                          'UserName',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                   
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );


    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          print(index);
        },
        items: const [
          Icon(Icons.search_outlined),
          Icon(Icons.home_outlined),
          Icon(Icons.settings_outlined),
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
            ],
          );
        },
      ),
    );
  }

}
