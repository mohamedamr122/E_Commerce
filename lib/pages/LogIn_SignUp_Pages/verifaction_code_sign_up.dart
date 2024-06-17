import 'package:e_commerce/pages/Home_Screen/home_page.dart';
import 'package:e_commerce/Components/verification_code_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCodeSignUp extends StatelessWidget {
  static const String routeName = 'Verification Code Sign Up';
  const VerificationCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Verification Code',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'The code send to your email******@gmail.com',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationCodeTextField(),
                SizedBox(
                  width: 15,
                ),
                VerificationCodeTextField(),
                SizedBox(
                  width: 15,
                ),
                VerificationCodeTextField(),
                SizedBox(
                  width: 15,
                ),
                VerificationCodeTextField(),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                'Reasend in 01:00',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(145, 145, 145, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    HomePage.routeName, (route) => false);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 16, 87, 43),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                fixedSize: MaterialStatePropertyAll(
                  Size(242, 52),
                ),
              ),
              child: const Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
