import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/users_data/bar_chart.dart';
import 'package:projet/users_data/linechart.dart';
// import 'graph_widget.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('User1 Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: size.height * 0.4,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              image: DecorationImage(image: 
                              AssetImage('lib/assets/heart1.png'),
                              fit: BoxFit.fill
                              )
                            ),
                          ),
                        SizedBox(height: 15),
                        Text(
                          'Heart Rate',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: size.height * 0.4,
                          width: size.width * 0.4,
                          child: AnimatedProgressBar(
                            stroke: 20,
                            color: Colors.blue,
                            style: PaintingStyle.stroke,
                            percentage: 0.55,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Current SpO2 level',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      height: size.height * 0.5,
                      width: size.width * 0.8,
                      child: BarChartSample3(),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Haemoglobin value',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      height: size.height * 0.5,
                      width: size.width * 0.8,
                      child: LineChartSample2(),
                    ),
                    Text(
                      'Respiration Rate',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
