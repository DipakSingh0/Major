import 'package:flutter/material.dart';
import 'package:projet/pages/loginpages/loginpages/verification_code.dart';

class RegisterVerificationPage extends StatelessWidget {
  const RegisterVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //double aspectRatio = 16/9;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/register.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
          backgroundColor: Colors.transparent,
            title: const Text('Register' ,  
            style: TextStyle(
              color: Colors.white, 
              fontSize: 30  
              // fontWeight:  ,
              ),),

          ),
          body: Stack(
            children: [
           SingleChildScrollView(
             child: Padding(
              padding:  EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                     SizedBox(height: screenSize.height * 0.020), // Space between TextField and Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue.shade200,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationCode(),
                          ),
                        );
                      },
                      child: const Text('Send Verification Code',
                      style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
                       ),
           ),
        ])
        )
        ,
      ),
    );
  }
}
