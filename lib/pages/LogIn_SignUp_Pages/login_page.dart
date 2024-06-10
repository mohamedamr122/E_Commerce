import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/pages/Home_Screen/layout_page.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'LogIn';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailAdress = TextEditingController();

  final password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 45),
                child: const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
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
                lablelText: 'Email Adress',
                controller: emailAdress,
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                fillColor: const Color(0xffEEEEEE),
                suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  secureText = !secureText;
                });
              },
              icon: Icon(secureText ? Icons.visibility_off : Icons.visibility)),
                validator: (password) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  var passNonNullValue = password ?? "";
                  if (passNonNullValue.isEmpty) {
                    return ("Password is required");
                  } else if (passNonNullValue.length < 8) {
                    return ("Password Must be more than 5 characters");
                  } else if (!regex.hasMatch(passNonNullValue)) {
                    return ("Password should contain upper,lower,digit and Special character ");
                  }
                  return null;
                },
                lablelText: 'Password',
                controller: password,
                obscureText: true,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ForgotPassword.routeName);
                    },
                    child: const Text('forgot password?'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        LayoutPage.routeName, (route) => false);
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
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(80, 80, 80, 1),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SignUpPage.routeName);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color.fromRGBO(16, 87, 43, 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.0,
                    width: 65.0,
                    color: const Color.fromRGBO(80, 80, 80, 1),
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 1.0,
                    width: 65.0,
                    color: const Color.fromRGBO(80, 80, 80, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/Google.png',
                        width: 38,
                        height: 38,
                      ),
                      iconSize: 50,
                    ),
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/Facebook.png',
                        width: 38,
                        height: 38,
                      ),
                      iconSize: 50,
                    ),
                  ),
                  Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/X.png',
                        width: 38,
                        height: 38,
                      ),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
