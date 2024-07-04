import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
     // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

    // Example aspect ratio (adjust as per your image's aspect ratio)
    // double aspectRatio = 16 / 9; // width / height
       return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height, 
         decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/intro2.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
