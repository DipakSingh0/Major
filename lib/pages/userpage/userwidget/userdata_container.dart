/* 
Reusable container widget to display parameters
in Users page
*/
import 'package:flutter/material.dart';

class UserdataContainer extends StatelessWidget {
  final String parameterName;
  final String value;
  final String measure;
  final Icon icon;

  const UserdataContainer({
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

    return Container(
      height: screenHeight / 6.6,
      width: screenWidth / 2.4,
      decoration: BoxDecoration(
        color: Colors.blue[500],
        borderRadius: BorderRadius.circular(12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableHeight = constraints.maxHeight;
          final availableWidth = constraints.maxWidth;

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0 , left: 3),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: availableWidth * 0.20,
                          child: icon,
                        ),
                      ),
                      SizedBox(width: availableWidth* 0.04,),
                      Expanded(
                        flex: 3,
                        child: Text(
                          parameterName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: availableWidth * 0.114,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: availableHeight *
                              0.21, // Adjust font size based on height
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: availableWidth*0.04,),
                      Text(
                        measure,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: availableHeight *
                              0.18, // Adjust font size based on height
                          fontWeight: FontWeight.w300,
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
    );
  }
}
