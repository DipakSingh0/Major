import 'package:flutter/material.dart';
import 'package:projet/pages/userpage/userwidget/circular_animated_widget.dart';
import 'package:projet/pages/userpage/userwidget/userdata_container.dart';
import 'package:projet/pages/userpage/users_data_graphs/bar_chart.dart';
import 'package:projet/pages/userpage/users_data_graphs/linechart.dart';

import 'users_data_graphs/max_min_chart.dart';
import 'blooddata_page.dart';
// import 'package:projet/pages/notifications/heartrate_controller.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  // final HeartRateNotificationController heartRateController =
  //     HeartRateNotificationController();

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    int heartRate = 10;
    // heartRateController.checkHeartRate(heartRate);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          toolbarHeight: 75,
          title: Text(
            'Baby Data',
            style: theme.textTheme.displayLarge,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.020),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          icon: Icon(Icons.heart_broken,
                              color: theme.iconTheme.color, size: 45),
                          parameterName: "HeartRate",
                          // value: "128",
                          //.... dynamic heart rate to enable notificaion
                          value: heartRate.toString(),

                          //
                          measure: "bpm"),
                      SizedBox(width: screenWidth * 0.0001),
                      CircularAnimatedWidget(),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          icon: Icon(
                            Icons.thermostat,
                            color: theme.iconTheme.color,
                            size: 50,
                          ),
                          parameterName: "Temperature",
                          value: "98.6",
                          measure: "°F"),
                      UserdataContainer(
                          icon: Icon(
                            Icons.air,
                            color: theme.iconTheme.color,
                            size: 45,
                          ),
                          parameterName: "Respiration",
                          value: "75",
                          measure: "/min"),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UserdataContainer(
                          icon: Icon(
                            Icons.favorite,
                            color: theme.iconTheme.color,
                            size: 45,
                          ),
                          parameterName: "Hemoglobin",
                          value: "13.80",
                          measure: "g/dL"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BlooddataPage()));
                        },
                        child: UserdataContainer(
                          icon: Icon(
                            Icons.bloodtype,
                            color: theme.iconTheme.color,
                            size: 45,
                          ),
                          parameterName: "Blood Data",
                          value: "A+",
                          measure: "",
                        ),
                      )
                      // Divider(),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),

                  //............... displays saved data displayed on graphs .............//
                  Divider(),
                  SizedBox(height: screenHeight * 0.005),
                  Center(
                      child: Text(
                    'Saved Data',
                    style: theme.textTheme.displayLarge,
                  )),

                  SizedBox(height: screenHeight * 0.005),
                  Divider(),
                  SizedBox(height: screenHeight * 0.030),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: screenWidth * 0.6,
                          width: screenWidth * 1,
                          decoration: BoxDecoration(
                              color: theme.cardColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10,
                              left: 5,
                              right: 10,
                            ),
                            child: WeeklyBarChart(
                              minValues: [120, 130, 125, 125, 128, 135, 132],
                              maxValues: [160, 180, 175, 170, 165, 160, 158],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Heart Rate',
                        style: theme.textTheme.displayLarge,
                      ),
                    ],
                  ),
                  Divider(),

                  SizedBox(height: screenHeight * 0.030),

                  Column(
                    children: [
                      Container(
                        height: screenHeight * 0.24,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                            color: theme.cardColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                            bottom: 5,
                            // left: 5,
                            // right: 5,
                          ),
                          child: LineChartSample2(),
                        ),
                      ),
                      Text(
                        'Blood Oxygen Level',
                        style: theme.textTheme.displayLarge,
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: screenHeight * 0.030),

                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.6,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                            color: theme.cardColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: BarChartSample3(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Respiration Rate',
                        style: theme.textTheme.displayLarge,
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: screenHeight * 0.030),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: screenWidth * 0.6,
                          width: screenWidth * 1,
                          decoration: BoxDecoration(
                              color: theme.cardColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              bottom: 10,
                              left: 5,
                              right: 10,
                            ),
                            child: WeeklyBarChart(
                              minValues: [120, 130, 125, 125, 128, 135, 132],
                              maxValues: [160, 180, 175, 170, 165, 160, 158],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'SpO2',
                        style: theme.textTheme.displayLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
