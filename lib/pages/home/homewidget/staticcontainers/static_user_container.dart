import 'package:flutter/material.dart';
import 'package:projet/pages/home/homewidget/staticcontainers/user_smallercontainers.dart';
import 'package:projet/pages/userpage/user.dart';

class StaticUserContainer extends StatelessWidget {
  final String childName;
  final String parentName;
  final String dobDate;
  final String bedNumber;
  final String contactNumber;

  const StaticUserContainer(
      {super.key,
      required this.childName,
      required this.parentName,
      required this.dobDate,
      required this.bedNumber,
      // required String userName,
      required this.contactNumber});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => User1()),
          );
        },
        child: Container(
          height: screenHeight / 4.1,
          width: screenWidth / 1.05,
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 5.0, top: 8.0, bottom: 8.0, right: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Name: " + childName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "Parent Name:\n" + parentName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "Bed Number:" + bedNumber,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "DOB:" + dobDate,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                            Text(
                              "Parent Contact:\n" + contactNumber,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                          ],
                        )
                        ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      children: [
                        UserdataSmallContainer(
                            icon: Icon(Icons.heart_broken,
                                color: Colors.blue, size: 25),
                            parameterName: "Heart Rate",
                            value: "120",
                            measure: "/min"),
                        UserdataSmallContainer(
                           icon: Icon(
                              Icons.air,
                              color: Colors.blue,
                              size: 25,
                            ),
                            parameterName: "Respiration",
                            value: "12",
                            measure: "/min"),
                        UserdataSmallContainer(
                          icon: Icon(
                              Icons.thermostat,
                              color: Colors.blue,
                              size: 25,
                            ),
                            parameterName: "Temperature",
                            value: "120",
                            measure: "°F"),
                        UserdataSmallContainer(
                            icon: Icon(
                              Icons.bloodtype,
                              color: Colors.blue,
                              size: 25,
                            ),
                            parameterName: "SpO2", value: "12", measure: "%"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
