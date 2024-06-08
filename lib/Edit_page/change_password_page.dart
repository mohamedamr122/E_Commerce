import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:flutter/material.dart';

class ChangepasswordPage extends StatefulWidget {
  const ChangepasswordPage({super.key});
  static const String routeName = 'ChangepasswordPage';

  @override
  State<ChangepasswordPage> createState() => _ChangepasswordPageState();
}

class _ChangepasswordPageState extends State<ChangepasswordPage> {
  final currentPasswordController = TextEditingController();

  final newPasswordController = TextEditingController();

  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool secureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const AppBarText(text: 'B S B')
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Current password',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            MyTextField(
              fillColor: Colors.white,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      secureText = !secureText;
                    });
                  },
                  icon: Icon(
                      secureText ? Icons.visibility_off : Icons.visibility)),
              validator: (currentPassword) {
                RegExp regex = RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                var passNonNullValue = currentPassword ?? "";
                if (passNonNullValue.isEmpty) {
                  return ("Password is required");
                } else if (passNonNullValue.length < 8) {
                  return ("Password Must be more than 5 characters");
                } else if (!regex.hasMatch(passNonNullValue)) {
                  return ("Password should contain upper,lower,digit and Special character ");
                }
                return null;
              },
              lablelText: '@#@#',
              controller: currentPasswordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'New password',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            MyTextField(
              fillColor: Colors.white,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      secureText = !secureText;
                    });
                  },
                  icon: Icon(
                      secureText ? Icons.visibility_off : Icons.visibility)),
              validator: (newPassword) {
                RegExp regex = RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                var passNonNullValue = newPassword ?? "";
                if (passNonNullValue.isEmpty) {
                  return ("Password is required");
                } else if (passNonNullValue.length < 8) {
                  return ("Password Must be more than 5 characters");
                } else if (!regex.hasMatch(passNonNullValue)) {
                  return ("Password should contain upper,lower,digit and Special character ");
                }
                return null;
              },
              lablelText: '',
              controller: newPasswordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Confirm password',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            MyTextField(
              fillColor: Colors.white,
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
                  return ("Password is required");
                } else if (passNonNullValue.length < 8) {
                  return ("Password Must be more than 5 characters");
                } else if (!regex.hasMatch(passNonNullValue)) {
                  return ("Password should contain upper,lower,digit and Special character ");
                }
                return null;
              },
              lablelText: '',
              controller: confirmPasswordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
              child: const Text(
                'Confirm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.white,
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
                'Cancel',
                style: TextStyle(
                  color: Color(0xffB0B0B1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
