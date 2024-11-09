/* 
Reusable SUB-CONTAINER widget to display parameters
in Home page
*/
import 'package:flutter/material.dart';

class UserdataSmallContainer extends StatelessWidget {
  final String parameterName;
  final String value;
  final String measure;
  final Icon icon;

  const UserdataSmallContainer({
    super.key,
    required this.parameterName,
    required this.value,
    required this.measure,
    required this.icon,
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
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 2),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: availableWidth * 0.20,
                            child: icon,
                          ),
                        ),
                        SizedBox(
                          width: availableWidth * 0.05,
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            parameterName,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: availableWidth * 0.114,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          value,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: availableHeight *
                                0.21, // Adjust font size based on height
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: availableWidth * 0.04,
                        ),
                        Text(
                          measure,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: availableHeight *
                                0.18, // Adjust font size based on height
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
