import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/pages/Home_Screen/home_page.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatefulWidget {
  static const String routeName = 'Create New Password';

  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final confirmPasswordController = TextEditingController();

  final passwordController = TextEditingController();

  bool secureText = true;

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromRGBO(13, 75, 69, 1),
      barrierColor: Colors.black.withOpacity(0.3),
      isDismissible: false,
      builder: (context) => SizedBox(
        width: double.infinity,
        height: 812,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Icon(
                    Icons.done_rounded,
                    size: 150,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.circle_outlined,
                  size: 130,
                  color: Colors.white,
                ),
              ],
            ),
            const Text(
              'Your password has been changed',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome back! Discover now!',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 0.5),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    HomePage.routeName, (route) => false);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromRGBO(255, 255, 255, 1),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                fixedSize: WidgetStatePropertyAll(
                  Size(242, 52),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                  color: Color.fromRGBO(13, 70, 65, 1),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 60,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Create new Password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 81,
              ),
              MyTextField(keyboardType: TextInputType.visiblePassword,
                fillColor: const Color(0xffEEEEEE),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secureText = !secureText;
                      });
                    },
                    icon: Icon(
                        secureText ? Icons.visibility_off : Icons.visibility)),
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
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                keyboardType: TextInputType.visiblePassword,
                fillColor: const Color(0xffEEEEEE),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secureText = !secureText;
                      });
                    },
                    icon: Icon(
                        secureText ? Icons.visibility_off : Icons.visibility)),
                validator: (confirmPassword) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  var passNonNullValue = confirmPassword ?? "";
                  if (passNonNullValue.isEmpty) {
                    return ("Password not match");
                  } else if (passNonNullValue.length < 8) {
                    return ("Password Must be more than 5 characters");
                  } else if (!regex.hasMatch(passNonNullValue)) {
                    return ("Password should contain upper,lower,digit and Special character ");
                  }
                  return null;
                },
                lablelText: 'confirm password',
                controller: confirmPasswordController,
                obscureText: true,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  _displayBottomSheet(context);
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
                  'Submit',
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
    );
  }
}
