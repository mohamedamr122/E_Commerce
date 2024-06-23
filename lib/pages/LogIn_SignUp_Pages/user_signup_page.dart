import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/cubit/auth/auth_cubit.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/user_login_page.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/verifaction_code_sign_up.dart';
import 'package:e_commerce/pages/layout_screen/layout_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../methods/show_snack_bar.dart';

class UserSignUpPage extends StatefulWidget {
  static const String routeName = 'SignUp';

  const UserSignUpPage({super.key});

  @override
  State<UserSignUpPage> createState() => _UserSignUpPageState();
}

class _UserSignUpPageState extends State<UserSignUpPage> {
  var auth = FirebaseAuth.instance;
  final userNameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String pattern = '([a-zA-Z])';

  bool _secureText = true;
  bool _secureTextConfirm = true;
  bool isLoading = false;

  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          Navigator.pushNamed(context, UserLoginPage.routeName);
          showSnackBar(context, 'signup success');
        } else if (state is RegisterFailState) {
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            body: Form(
              key: _formKey,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 60,
                  ),
                  child: ListView(
                    children: [
                      const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(81, 81, 81, 0.9),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MyTextField(
                        keyboardType: null,
                        fillColor: const Color(0xffEEEEEE),
                        suffixIcon: null,
                        validator: (userName) {
                          RegExp regExp = RegExp(pattern);
                          if (userName == null ||
                              userName.isEmpty ||
                              !regExp.hasMatch(userName)) {
                            return 'Invalid user name';
                          }
                          return null;
                        },
                        controller: userNameController,
                        lablelText: 'User Name',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        keyboardType: TextInputType.emailAddress,
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
                        controller: emailController,
                        lablelText: 'Email',
                        obscureText: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        keyboardType: TextInputType.visiblePassword,
                        fillColor: const Color(0xffEEEEEE),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                            icon: Icon(_secureText
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        validator: (password) {
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
                        controller: passwordController,
                        obscureText: _secureText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        keyboardType: TextInputType.visiblePassword,
                        fillColor: const Color(0xffEEEEEE),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _secureTextConfirm = !_secureTextConfirm;
                              });
                            },
                            icon: Icon(_secureTextConfirm
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        validator: (confirmPassword) {
                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            return ('Password not matching');
                          }
                          return null;
                        },
                        lablelText: 'confirm password',
                        controller: confirmPasswordController,
                        obscureText: _secureTextConfirm,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (passwordController == confirmPasswordController ||
                              _formKey.currentState!.validate()) {
                            isLoading = true;
                            setState(() {});
                            try {
                              BlocProvider.of<AuthCubit>(context).register(
                                  userName: userNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text);
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                showSnackBar(context, 'Weak password');
                              } else if (e.code == 'email-already-in-use') {
                                showSnackBar(context, 'Email already exist');
                              }
                            } catch (e) {
                              showSnackBar(context, 'There wan an error');
                            }
                            isLoading = false;
                            setState(() {});
                          } else {}
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
                        child: Text(
                          state is RegisterLoadingState
                              ? 'Loading'
                              : 'Create Account',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1),
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
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1),
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
                                    color: Color.fromRGBO(223, 223, 223, 1),
                                    width: 1),
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
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have account?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(80, 80, 80, 1),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, UserLoginPage.routeName);
                            },
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                  color: Color.fromRGBO(16, 87, 43, 1)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
