import 'package:e_commerce/pages/LogIn_SignUp_Pages/admin_login_page.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/user_signup_page.dart';
import 'package:flutter/material.dart';

import '../../Components/navigator_button.dart';

class ChooseSignupPage extends StatelessWidget {
  const ChooseSignupPage({super.key});
  static const String routeName = 'ChooseSignupPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/b&s.png',
              height: 78,
              width: 122,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Color(0xff515151),
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
            )),
            const SizedBox(
              height: 100,
            ),
            MyNavigatorButton(
                textColor: Colors.white,
                onTap: () => Navigator.pushReplacementNamed(
                    context, UserSignUpPage.routeName),
                height: 52,
                width: 243,
                color: const Color(0xff0D4641),
                text: 'User'),
            const SizedBox(
              height: 20,
            ),
            MyNavigatorButton(
                textColor: Colors.white,
                onTap: () => Navigator.pushReplacementNamed(
                    context, AdminLoginPage.routeName),
                height: 52,
                width: 243,
                color: Color(0xff0D4641),
                text: 'Admin'),
          ],
        ),
      ),
    );
  }
}
