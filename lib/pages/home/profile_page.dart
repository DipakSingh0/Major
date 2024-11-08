import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
          toolbarHeight: 75,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: const Text(
              'P r o f i l e',
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(child: Text("profile page", style: Theme.of(context).textTheme.bodyLarge)),
            ],
          )),
    );
  }
}
