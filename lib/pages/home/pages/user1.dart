import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/pages/home/homewidget/userdata_container.dart';
import 'package:projet/users_data_graphs/bar_chart.dart';
import 'package:projet/users_data_graphs/linechart.dart';

import '../../../users_data_graphs/max_min_chart.dart';
import 'blooddata_page.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('User1 Page'),
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
                  'Baby Data',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                )),


                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                
//....................... realtime  parameters ........................//
                
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                       UserdataContainer(
                        parameterName: "HeartRate",
                        value: "128",
                        measure: "/min"),

                    
                    // CirculardataContainer(
                    // parameterName: "SpO2",
                    // percentage: 0.55),

                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BlooddataPage()));
                      },
                      child: UserdataContainer(
                          parameterName: "Blood Data",
                          value: "A+",
                          measure: "" ,),
                    ),
                    // Divider(),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),

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
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: ScreenWidth * 0.6,
                      width: ScreenWidth * 0.9,
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

                SizedBox(height: MediaQuery.of(context).size.height * 0.005),

                Column(
                  children: [
                    SizedBox(
                      height: ScreenWidth * 0.6,
                      width: ScreenWidth * 0.9,
                      child: LineChartSample2(),
                    ),
                    Text(
                      'Blood Oxygen Level',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),

                Column(
                  children: [
                    Container(
                      height: ScreenWidth * 0.6,
                      width: ScreenWidth * 0.9,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),

                Column(
                  children: [
                    SizedBox(
                      height: ScreenWidth * 0.6,
                      width: ScreenWidth * 0.9,
                      child: LineChartSample2(),
                    ),
                    Text(
                      'Body Temperature',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
