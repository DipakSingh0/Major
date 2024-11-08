/* 
Reusable SUB-CONTAINER widget to display parameters
in Home page
*/
import 'package:flutter/material.dart';

class UserdataSmallContainer extends StatelessWidget {
  final String parameterName;
  final String value;
  final String measure;

  const UserdataSmallContainer({
    super.key,
    required this.parameterName,
    required this.value,
    required this.measure,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        height: screenHeight / 6,
        width: screenWidth / 5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final availableHeight = constraints.maxHeight;
            final availableWidth = constraints.maxWidth;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    parameterName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: availableWidth * 0.1522,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: availableHeight *
                              0.21, // Adjust font size based on height
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        measure,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: availableHeight *
                              0.15, // Adjust font size based on height
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
