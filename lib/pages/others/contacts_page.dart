import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 75,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: const Text(
              'C O N T A C T S',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                  child: Text("Contacts page",
                      style: Theme.of(context).textTheme.bodyLarge)),
            ],
          )),
    );
  }
}
