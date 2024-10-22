import 'package:flutter/material.dart';
import 'package:projet/pages/home_page.dart';
import 'package:projet/pages/loginpages/loginpages/register_page.dart';
// import 'package:projet/pages/loginpages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Getthing the mobile screen size
    var screenSize = MediaQuery.of(context).size;
    // double aspectRatio = 16/9;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/register.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 25, 
                    top:  60),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                    top: screenSize.height * 0.4,
                    left: 35,
                    right: 35,
                  child: Column(
                    children: [
                      //Email textfield
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                     SizedBox(height: screenSize.height* 0.02),

                     //Password Textfield
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password', 
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        obscureText: true, // Hiding the password
                      ),
                       SizedBox(height: screenSize.height* 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xff4c505b),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              // onPressed: () {
                              //   Navigator.pushNamed(context, '/AuthenticationPage');
                              // },
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                );
                              },
      
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                       SizedBox(height: screenSize.height* 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()),
                              );
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          //  const SizedBox(height:40, width: 40, ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize:  18 ,
                                  color: Colors.black,
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
    );
  }
}
