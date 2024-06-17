import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/verification_code_forgot_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static const String routeName = 'Forgot Password';
  ForgotPassword({super.key});
  final _formKey = GlobalKey<FormState>();

  final emailAdress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 60,
            ),
            child: Column(
              children: [
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 81,
                ),
                const Text(
                  'enter email associated with your account and we will send and email with intructions to reset password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextField(keyboardType: TextInputType.emailAddress,
                  fillColor: const Color(0xffEEEEEE),
                  suffixIcon: null,
                  validator: (email) {
                    if (email == null ||
                        email.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('.')) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                  controller: emailAdress,
                  lablelText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context)
                          .pushNamed(VerificationCodeForgotPassword.routeName);
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 16, 87, 43),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    fixedSize: WidgetStatePropertyAll(
                      Size(242, 52),
                    ),
                  ),
                  child: const Text(
                    'Send Code',
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
        ),
      ),
    );
  }
}
