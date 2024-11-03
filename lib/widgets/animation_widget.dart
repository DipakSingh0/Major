import 'package:flutter/material.dart';
import 'package:projet/pages/home/homewidget/add_container_widget.dart';
import 'drawer_widget.dart'; 

class AnimationWidget extends StatelessWidget {
  final AnimationController animationController;
  final double maxSlide;

  const AnimationWidget({
    Key? key,
    required this.animationController,
    required this.maxSlide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myDrawer = MyDrawerWidget();
    var myChild = AddContainerWidget();

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        double slide = maxSlide * animationController.value;
        double scale = 1 - (animationController.value * 0.3);

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
    );
  }
}
