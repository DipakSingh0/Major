import 'package:flutter/material.dart';

class UserdataContainer extends StatelessWidget {
  final String parameterName;
  final String value;
  final String measure;

  const UserdataContainer({
    super.key,
    required this.parameterName,
    required this.value,
    required this.measure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6.5 ,
      width: MediaQuery.of(context).size.width / 2.5 ,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
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
                    color: Colors.white,
                    fontSize: availableWidth *
                        0.114, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
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
                    Text(
                      measure,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: availableHeight *
                            0.12, // Adjust font size based on height
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
    );
  }
}
