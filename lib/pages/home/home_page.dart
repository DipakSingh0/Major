import 'package:flutter/material.dart';
// import 'package:projet/pages/home/user1.dart';
import 'homewidget/animation_widget.dart';
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
        )
        
        );
  }
    }
//   Widget MyContainer() {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         height: 200,
//         width: 380,
//         margin: const EdgeInsets.only(top: 16.0),
//         decoration: BoxDecoration(
//           color: const Color(0xFFF4F4F6),
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(
//             color: Colors.grey,
//             width: 0.2,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 14.0, top: 14.0),
//           child: GestureDetector(
//             // Navigates to User1 on inner tap
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => User1()),
//               );
//             },
//             child: const Text(
//               'UserName',
//               style: TextStyle(
//                 color: Colors.black, // Changed to black to be visible
//                 fontSize: 18,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
