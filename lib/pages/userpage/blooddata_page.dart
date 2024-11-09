import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';

import 'userwidget/userdata_container.dart';

class BlooddataPage extends StatelessWidget {
  const BlooddataPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 75,
          title: const Text('B L O O D - D A T A',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins",
                letterSpacing: 1.5,
                color: Colors.white,
              )),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.005),
                  // Center(
                  //     child: Text(
                  //   'Blood Constituents',
                  //   style: TextStyle(
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.normal,
                  //     color: Colors.black,
                  //   ),
                  // )),

                  // SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  //....................... realtime  parameters ........................//

                  // Divider(),
                  SizedBox(height: screenHeight * 0.03),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserdataContainer(
                          icon: Icon(
                            Icons.bloodtype,
                            color: Colors.white,
                            size: 45,
                          ),
                          parameterName: "RBC Count",
                          value: "4.0",
                          measure: "M/mm³"),

                      // CirculardataContainer(
                      // parameterName: "SpO2",
                      // percentage: 0.55),
                      SizedBox(width: screenWidth * 0.0005),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.grey[200],
                              height: screenHeight / 7.2,
                              width: screenWidth / 3.2,
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
                              top: 22,
                              left: 32,
                              child: Text(
                                'SpO2',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                         icon: Icon(
                            Icons.bloodtype,
                            color: Colors.white,
                            size: 45,
                          ),
                          parameterName: "WBC Count",
                          value: "10,000",
                          measure: "/mm³"),
                      UserdataContainer(
                       icon: Icon(
                            Icons.bloodtype,
                            color: Colors.white,
                            size: 45,
                          ),
                          parameterName: "Platelets",
                          value: "10,000",
                          measure: "/mm³"),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                         icon: Icon(
                            Icons.bloodtype,
                            color: Colors.white,
                            size: 45,
                          ),
                          parameterName: "Haemoglobin",
                          value: "13.80",
                          measure: "g/dL"),
                      UserdataContainer(
                       icon: Icon(
                          Icons.bloodtype,
                          color: Colors.white,
                          size: 45,
                        ),
                        parameterName: "Neutrophil",
                        value: "12000",
                        measure: "/mm³",
                      ),
                      // Divider(),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                        icon: Icon(
                            Icons.bloodtype,
                            color: Colors.white,
                            size: 45,
                          ),
                          parameterName: "Esonophil",
                          value: "300",
                          measure: "/mm³"),
                      UserdataContainer(
                       icon: Icon(
                          Icons.bloodtype,
                          color: Colors.white,
                          size: 45,
                        ),
                        parameterName: "MCV",
                        value: "110",
                        measure: "fL",
                      ),
                      // Divider(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
