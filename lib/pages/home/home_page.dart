import 'package:flutter/material.dart';
import 'package:projet/widgets/animation_widget.dart';
// import 'package:projet/pages/home/user1.dart';
// import 'homewidget/animation_widget.dart';
import 'homewidget/my_botom_bar_widget.dart';

class HomePage extends StatefulWidget {
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
    return Scaffold(
        bottomNavigationBar: const MyBottomBarWidget(),
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
        body: AnimationWidget(
          animationController: _animationController,
          maxSlide: maxSlide,
        ));
  }
}// in this page add 2 containers with height 200 and width 250 