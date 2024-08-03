import 'package:flutter/material.dart';
import 'package:projet/loginpages/login_page.dart';
// import 'package:projet/welcome_page.dart';
import 'package:projet/introscreens/intro_page1.dart';
import 'package:projet/introscreens/intro_page2.dart';
import 'package:projet/introscreens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  //controller
  final PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const IntroPage1(),
              const IntroPage2(),
              const IntroPage3(),
            ],
          ),

          //dot indicator
          // Replace your existing Container with this
          Container(
            alignment: const Alignment(0, 0.75),
            // padding: const EdgeInsets.only(top: 700),
            padding: const EdgeInsets.only(top: 400),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //skip
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold, 
                            color: Colors.white),
                      ),
                    ),

                    //next or lastpage
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              if (_controller.page!.toInt() < 2) {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 350),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                  ],
                ),
                const SizedBox(height: 20), // Add some space between buttons and SmoothPageIndicator
                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
