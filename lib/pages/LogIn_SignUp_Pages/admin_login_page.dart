import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/cubit/auth/auth_cubit.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/forgot_password.dart';
import 'package:e_commerce/pages/LogIn_SignUp_Pages/user_signup_page.dart';
import 'package:e_commerce/pages/layout_screen/layout_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});
  static const String routeName = 'AdminLoginPage';


  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final emailAdress = TextEditingController();

  final password = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  bool _secureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is LoginSuccessState){
          Navigator.pushNamed(context, AdminLoginPage.routeName);
        }else if (state is LoginFailState){
          showSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
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
                      lablelText: 'Email Adress',
                      controller: emailAdress,
                      obscureText: false,
                    ),
                    const SizedBox(
                      height: 30,
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
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
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
                      obscureText: _secureText,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPassword.routeName);
                          },
                          child: const Text('forgot password?'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            BlocProvider.of<AuthCubit>(context).login(
                                email: emailAdress.text,
                                password: password.text);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              showSnackBar(context, 'User not found');
                            } else if (e.code == 'worng-password') {
                              showSnackBar(context, 'Worng password');
                            }
                          } catch (e) {
                            showSnackBar(context, 'There wan an error');
                          }
                          isLoading = false;
                          setState(() {});
                        }
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xff0D4641),
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
                        state is LoginLoadingState ? 'Loading' : 'Log In',
                        style: const TextStyle(
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
                                .pushReplacementNamed(UserSignUpPage.routeName);
                          },
                          child: const Text(
                            'Sign Up',
                            style:
                            TextStyle(color: Color.fromRGBO(16, 87, 43, 1)),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
