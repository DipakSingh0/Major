import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/pages/insideapp/insideidgets/drawer.dart';
import 'insideidgets/body_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final double maxSlide = 225.0;
  late AnimationController _animationController;

  // var ScreenSize = MediaQuery.of(context).size ;

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
    // final themeState = ThemeWidget.of(context);

    //.............................DrawerWidget.............................//
    var myDrawer = MyDrawerWidget();


  //.............................Main Content.............................//
    var myChild = MyBodyWidget();

    

  //...........................BottomNavBar...............................//
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyCurvedBottomNavBar(),

  //............................AppBarTheme...............................//
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
      )
    );
  }
}


class MyCurvedBottomNavBar extends StatelessWidget {
  const MyCurvedBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor!,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          // print(index);
        },
        items: const [
          Icon(Icons.search_outlined),
          Icon(Icons.home_outlined),
          Icon(Icons.settings_outlined),
        ],
      );
  }
}

