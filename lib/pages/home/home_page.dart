import 'package:flutter/material.dart';
import 'package:projet/widgets/drawer_widget.dart';
import '../../widgets/my_botom_bar_widget.dart';
import 'homewidget/dialogbox_widget.dart';
import '../userpage/user.dart';

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
        //  bottomNavigationBar: MyBottomBarWidget(),
        bottomNavigationBar:  MyBottomBarWidget(),
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
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              UserContainer(),
              UserContainer(),
              UserContainer(),
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

  Widget UserContainer() {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: screenHeight / 3.6,
        width: screenWidth / 1.1,
        margin: const EdgeInsets.only(top: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => User1()),
              );
            },
            child: Text(
              "User",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }

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
        padding: const EdgeInsets.only(left: 18.0, right: 18),
        child: Container(
          height: screenHeight / 3.4,
          width: screenWidth / 1.1,
          margin: const EdgeInsets.only(top: 12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 14.0),
            child: Text(
              'UserName ${index + 1}', // Display the index for the name
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
