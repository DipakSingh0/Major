import 'package:flutter/material.dart';
import 'package:projet/users_data/user1.dart';

class MyBodyWidget extends StatefulWidget {
  const MyBodyWidget({super.key});

  @override
  _MyBodyWidgetState createState() => _MyBodyWidgetState();
}

class _MyBodyWidgetState extends State<MyBodyWidget> {
  final List<Widget> _containers = [];

  // Function to create a new Container widget
  Widget _buildContainer(int index) {
    return GestureDetector(
      // open up form for new child
      onTap: () => _showAddDialog(),

      // To delete
      onLongPress: () => _showDeleteDialog(index),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: () { 
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => User1()));
          },
          child: Container(
            height: 200,
            width: 380,
            margin: const EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                )),
            child: const Padding(
              padding: EdgeInsets.only(left: 14.0, top: 14.0),
              child: Text(
                'UserName',
                style: TextStyle(
                  color: Colors.black, // Changed to black to be visible
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Add function
  void _addContainer() {
    setState(() {
      _containers.add(_buildContainer(_containers.length));
    });
  }

  // Delete function
  void _deleteContainer(int index) {
    setState(() {
      _containers.removeAt(index); // Remove container by index
    });
  }

  void _showDeleteDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Container'),
          content:
              const Text('Are you sure you want to delete this container?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Cancel
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                _deleteContainer(index); // Confirm deletion
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  // The Add Dialog does not need an index parameter
  void _showAddDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add new child'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Bed Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Admitted Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Parent Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Parents Contact',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Health Status',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text('Add'),
                onPressed: () {
                  _addContainer();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _containers.length,
                itemBuilder: (context, index) {
                  return _containers[index];
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog, // Show the dialog when the button is pressed
        child: const Icon(Icons.add),
      ),
    );
  }
}
