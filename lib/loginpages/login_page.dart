import 'package:flutter/material.dart';
import 'package:projet/insideapp/home_page.dart';
import 'package:projet/loginpages/register_page.dart';
// import 'package:projet/loginpages/register_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Getthing the mobile screen size
    Size screenSize = MediaQuery.of(context).size;

    // double aspectRatio = 16/9;
    return Scaffold(
      // appBar: AppBar(
        
      //   backgroundColor: Colors.transparent,
      //   title: const Padding(
          
      //     padding: EdgeInsets.only(left: 20, top: 20),
      //     child: Text(
      //       'Welcome Back',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 33,
      //       ),
      //     ),
      //   ),
      // ),

      // body: Scaffold(
      body: Container(
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
              padding: EdgeInsets.only(left: 25, top: 80),
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4,
                left: 35,
                right: 35,
              ),
              child: Column(
                children: [
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
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password', // Correct hintText
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true, // Hiding the password
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Login',
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
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterPage()),);
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
                          onPressed: () {
                          
                          },
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
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
    );
  }
}
