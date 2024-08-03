import 'package:animated_progress_bar/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:projet/users/bar_chart.dart';
import 'package:projet/users/linechart.dart';
// import 'graph_widget.dart';

class User1 extends StatelessWidget {
  const User1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User1 Page'),
      ),
      body: const SingleChildScrollView(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                width: 150,
                child: AnimatedProgressBar(
                  stroke: 20,
                  color: Colors.blue,
                  style: PaintingStyle.stroke,
                  percentage: 0.55,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'SpO2 level',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 425,
                child: LineChartSample2(),
              ),
               Text(
                'Respiration Rate',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
        
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 425,
                child: BarChartSample3(),
              ),
              Text(
                'Haemoglobin value',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}
