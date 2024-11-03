import 'package:flutter/material.dart';
import 'dialogbox_widget.dart';
import 'package:projet/pages/home/pages/user1.dart';

class AddContainerWidget extends StatefulWidget {
  const AddContainerWidget({super.key});

  @override
  _AddContainerWidgetState createState() => _AddContainerWidgetState();
}

class _AddContainerWidgetState extends State<AddContainerWidget> {
  final List<Widget> _containers = [];

  void _addContainer() {
    setState(() {
      _containers.add(_buildContainer(_containers.length));
    });
  }

  void _deleteContainer(int index) {
    setState(() {
      _containers.removeAt(index);
    });
  }

  Widget _buildContainer(int index) {
    return GestureDetector(
      // Opens the dialog to add a new child
      onTap: () => DialogBoxWidget.showAddDialog(context, _addContainer),

      // Deletes the container on long press
      onLongPress: () => DialogBoxWidget.showDeleteDialog(
        context,
        index,
        () => _deleteContainer(index),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 200,
          width: 380,
          margin: const EdgeInsets.only(top: 16.0),
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F6),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.grey,
              width: 0.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 14.0),
            child: GestureDetector(
              // Navigates to User1 on inner tap
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User1()),
                );
              },
              child: const Text(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: _containers.length,
          itemBuilder: (context, index) {
            return _containers[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => DialogBoxWidget.showAddDialog(
          context,
          _addContainer,
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
