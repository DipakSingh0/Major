import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // screenSize = MediaQuery.of(context).size;
    
    return Scaffold(

      appBar: AppBar(
        title: const Text('Authentication'),
      ),

      body: const Center(
        child: Text('Authentication Page'),
      ),
    );
  }
}