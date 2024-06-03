// import 'package:e_commerce/get_started_screen.dart';
import 'package:e_commerce/LogIn_SignUp_Pages/get_started_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const GetStartedScreen()),
        );
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash_screen_assets/splash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(181, 11, 36, 34).withOpacity(0.35),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
