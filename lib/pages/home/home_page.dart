import 'package:flutter/material.dart';
import 'package:projet/pages/home/homewidget/staticcontainers/static_user_container.dart';
import 'package:projet/widgets/drawer_widget.dart';
import '../../widgets/my_botom_bar_widget.dart';
import 'homewidget/dialogbox_widget.dart';
import '../userpage/user.dart';
import 'homewidget/staticcontainers/user_smallercontainers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _containers = [];

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    //  var  screenHidth  = MediaQuery.of(context).size.height;
    // var  screenWidth  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        drawer: MyDrawerWidget(),
        bottomNavigationBar: MyBottomBarWidget(),
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: const Text('Home Page',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins",
                letterSpacing: 1.5,
                color: Colors.white,
              )),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.notifications, color: Colors.white, size: 32),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //......................StaticUserContainer Widget.......................//
              StaticUserContainer(
                // userName: 'hary',
                childName: 'Mukeshar',
                parentName: 'Avishek Kumar',
                dobDate: '2060/01/01',
                bedNumber: '18',
                contactNumber: '9841419315',

              ),
              StaticUserContainer(
                // userName: 'hary',
                childName: '',
                parentName: '',
                dobDate: '',
                bedNumber: '', 
                contactNumber: '',
              ),

              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: _containers.length,
                  itemBuilder: (context, index) {
                    return _containers[index];
                  },
                  shrinkWrap: true,
                ),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            DialogBoxWidget.showAddDialog(context, _addContainer);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

//..............Dynamically created Container...................//

  void _addContainer() {
    setState(() {
      _containers.add(_buildContainer(_containers.length + 1));
    });
  }

  void _deleteContainer(int index) {
    if (index >= 0 && index < _containers.length) {
      setState(() {
        _containers.removeAt(index);
      });
    }
  }

//..............Dynamically created Container...................//
  Widget _buildContainer(int index) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      // Opens the dialog to add a new child on tap
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => User1())),
      // Deletes the container on long press
      onLongPress: () => DialogBoxWidget.showDeleteDialog(
        context,
        index,
        () => _deleteContainer(index),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
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
                              // "Name: " + childName,
                              "Name: ",

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              // "Parent Name:\n" + parentName,
                              "Parent Name:\n",

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              // "Bed Number:" + bedNumber,
                              "Bed Number:",

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              // "DOB:" + dobDate,
                              "DOB:",

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              // "Parent Contact:\n" + contactNumber,
                              "Parent Contact:\n",

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
                            parameterName: "Heart Rate",
                            value: "120",
                            measure: "/min"),
                        UserdataSmallContainer(
                            parameterName: "Respiration",
                            value: "12",
                            measure: "/min"),
                        UserdataSmallContainer(
                            parameterName: "Temperature",
                            value: "120",
                            measure: "°F"),
                        UserdataSmallContainer(
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
