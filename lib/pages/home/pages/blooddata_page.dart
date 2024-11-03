import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';

import '../homewidget/userdata_container.dart';

class BlooddataPage extends StatelessWidget {
  const BlooddataPage({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Blood Data'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Center(
                    child: Text(
                  'Blood Constituents',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                )),

                // SizedBox(height: MediaQuery.of(context).size.height * 0.02),

//....................... realtime  parameters ........................//

                Divider(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    UserdataContainer(
                        parameterName: "RBC Count",
                        value: "128",
                        measure: "/min"),

                    // CirculardataContainer(
                    // parameterName: "SpO2",
                    // percentage: 0.55),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.grey[200],
                            height: ScreenHeight / 7.2,
                            width: ScreenWidth / 3.2,
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: AnimatedProgressBar(
                                stroke: 20,
                                color: Colors.blue,
                                style: PaintingStyle.stroke,
                                percentage: 0.55,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 32,
                            left: 42,
                            child: Text(
                              'SpO2',
                              style: TextStyle(fontSize: 28, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserdataContainer(
                        parameterName: "WBC Count", value: "98.6", measure: ""),
                    UserdataContainer(
                        parameterName: "Platelets", value: "75", measure: "/"),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserdataContainer(
                        parameterName: "Haemoglobin", value: "0", measure: "0"),
                    UserdataContainer(
                      parameterName: "Neutrophil",
                      value: "A+",
                      measure: "",
                    ),
                    // Divider(),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserdataContainer(
                        parameterName: "Esonophil", value: "0", measure: "0"),
                    UserdataContainer(
                      parameterName: "MCV",
                      value: "A+",
                      measure: "",
                    ),
                    // Divider(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
