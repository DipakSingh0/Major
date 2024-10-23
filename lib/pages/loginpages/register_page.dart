import 'package:flutter/material.dart';
import 'package:projet/pages/loginpages/login_page.dart';
import 'package:projet/pages/loginpages/register_verifn.dart';

class RegisterPage extends StatelessWidget {

  const RegisterPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    // final textColor = Colors.white;
    //  double aspectRatio = 16 / 9; // width / height
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: [
          Positioned(
              top: 0.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0, 
            child: Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/register2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  title: const Text(
                    'Create Account' , 
                    style: TextStyle(
                      fontSize: 30 , 
                      color: Colors.black87,
                    ),),
                ),
                body: Stack(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05, 
                      left: 35,
                      right: 35,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Hospital Id',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: screenSize.height* 0.01),
                          
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Hospital Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            
                          ),
                          SizedBox(height: screenSize.height* 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Registration Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: false, 
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Contact Person',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Phone Number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Location/Address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Password', 
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: screenSize.height * 0.01),
            
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: screenSize.height * 0.02),
            
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Register',
                                style: TextStyle(
                                    color: Color(0xff4c505b),
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xff4c505b),
                                child: IconButton(
                                  color: Colors.white,
                                  
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const RegisterVerificationPage()),
                                    );
                                  },
                
                                  icon: const Icon(Icons.arrow_forward),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=> const LoginPage()),);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    color: Color(0xff4c505b),
                                  ),
                                ),
                              ),
                              
                               TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: Color(0xff4c505b),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
