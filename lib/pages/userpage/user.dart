import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/pages/userpage/userwidget/userdata_container.dart';
import 'package:projet/pages/userpage/users_data_graphs/bar_chart.dart';
import 'package:projet/pages/userpage/users_data_graphs/linechart.dart';

import 'users_data_graphs/max_min_chart.dart';
import 'blooddata_page.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 75,
          title: const Text('Baby Data',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
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
                  SizedBox(height: screenHeight * 0.025),
                  // Center(
                  //     child: Text(
                  //   'Baby Data',
                  //   style: TextStyle(
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.normal,
                  //     color: Colors.black,
                  //   ),
                  // )),

                  // SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  //....................... realtime  parameters ........................//

                  // Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          parameterName: "HeartRate",
                          value: "128",
                          measure: "/min"),

                      SizedBox(
                          width: screenWidth * 0.0001),

                      // CirculardataContainer(

                      // parameterName: "SpO2",
                      // percentage: 0.55),

                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
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
                          ),
                          Positioned(
                            top: 32,
                            left: 42,
                            child: Text(
                              'SpO2',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          parameterName: "Body Temperature",
                          value: "98.6",
                          measure: "°F"),
                      UserdataContainer(
                          parameterName: "Respiration Rate",
                          value: "75",
                          measure: "/min"),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          parameterName: "Haemoglobin",
                          value: "0",
                          measure: "0"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlooddataPage()));
                        },
                        child: UserdataContainer(
                          parameterName: "Blood Data",
                          value: "A+",
                          measure: "",
                        ),
                      ),
                      // Divider(),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                  //............... displays saved data displayed on graphs .............//
                  Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Center(
                      child: Text(
                    'Saved Data',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  )),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenWidth * 0.6,
                        width: screenWidth * 0.9,
                        child: WeeklyBarChart(
                          minValues: [120, 130, 125, 125, 128, 135, 132],
                          maxValues: [160, 180, 175, 170, 165, 160, 158],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Heart Rate',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.24,
                        width: screenWidth * 0.9,
                        child: LineChartSample2(),
                      ),
                      Text(
                        'Blood Oxygen Level',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.6,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: BarChartSample3(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Respiration Rate',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.23,
                        width: screenWidth * 0.9,
                        child: LineChartSample2(),
                      ),
                      Text(
                        'Body Temperature',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
