import 'package:e_commerce/LogIn_SignUp_Pages/signup_page.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  static const String routeName = 'GetStartedScreen';
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get_started_screen/get_started.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(181, 11, 36, 34).withOpacity(0.35),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'B',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 62.3,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                          child: Text(
                            textAlign: TextAlign.center,
                            'S',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 62.3,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Text(
                            'S',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 62.3,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'TORE',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 62.3,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 270),
                  child: const Column(
                    children: [
                      Text(
                        'Welcome to B&S STORE',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'fashion store for all your needs',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(148, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 165),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SignUpPage.routeName);
                    },
                    child: const Text('Get Started'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
