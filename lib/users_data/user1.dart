import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/users_data/bar_chart.dart';
import 'package:projet/users_data/linechart.dart';

import 'max_min_chart.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var ScreenHeight = MediaQuery.of(context).size.height;
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
                  'RealTime Data' ,
                    style: TextStyle(fontSize: 25 , 
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    ),
                )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Divider(),
//....................... realtime  parameters ........................//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
//................. this will be used to display the heartbeat ............//
                            Container(
                              height: ScreenWidth / 2.4,
                              width: ScreenWidth / 2.5,
                              decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Heart Rate', // dont change this
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '142', // HeartBeat here
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 38,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '/min', // dont change this
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Stack(
                          children: [
                            Container(
                              color: Colors.grey[200],
                              height: ScreenWidth / 2.7,
                              width: ScreenWidth / 2.7,
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
                                style: TextStyle(
                                    fontSize: 28, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
//................. this will be used to display the heartbeat ............//
                            Container(
                              height: ScreenWidth / 2.4,
                              width: ScreenWidth / 2.5,
                              decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              top: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Respiration Rate', // dont change this
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '72',      //........ Respiration  here...........//
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 38,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '/min', // dont change this
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Divider(),
                    Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                       Stack(
                          children: [
//................. this will be used to display the heartbeat ............//
                            Container(
                              height: ScreenWidth / 2.4,
                              width: ScreenWidth / 2.5,
                              decoration: BoxDecoration(
                                // color: Colors.grey[200],
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              top: 40,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Body Temperature', // dont change this
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '98.6', //........ Respiration  here...........//
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 38,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '°F', // dont change this
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                      ],
                    ),
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
