import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/pages/Edit_page/change_password_page.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  static const String routeName = 'EditProfilePage';
  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final lastNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const AppBarText(text: 'W in R ')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'First Name',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          MyTextField(
            keyboardType: null,
            fillColor: Colors.white,
            suffixIcon: null,
            validator: (firstName) {
              if (firstName!.isEmpty) {
                return 'this field is required';
              }
              return null;
            },
            controller: firstNameController,
            lablelText: 'Nabil',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Last Name',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          MyTextField(
            keyboardType: null,
            fillColor: Colors.white,
            suffixIcon: null,
            validator: (lastName) {
              if (lastName!.isEmpty) {
                return 'this field is required';
              }
              return null;
            },
            controller: lastNameController,
            lablelText: 'edris',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Mobile Number',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          MyTextField(
            keyboardType: TextInputType.phone,
            fillColor: Colors.white,
            suffixIcon: null,
            validator: (mobileNumber) {
              if (mobileNumber!.isEmpty) {
                return 'this field is required';
              }
              return null;
            },
            controller: mobileNumberController,
            lablelText: '+201068035341',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Email',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          MyTextField(
            keyboardType: TextInputType.emailAddress,
            fillColor: Colors.white,
            suffixIcon: null,
            validator: (email) {
              if (email!.isEmpty) {
                return 'this field is required';
              }
              return null;
            },
            controller: emailController,
            lablelText: '*****@gmail.com',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          MyTextField(
            keyboardType: TextInputType.visiblePassword,
                        fillColor: Colors.white,
            suffixIcon: null,
            validator: (password) {
              if (password!.isEmpty) {
                return 'this field is required';
              }
              return null;
            },
            controller: passwordController,
            lablelText: '**********',
            obscureText: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ChangePasswordPage.routeName);
                },
                child: const Text(
                  'change password',
                  style: TextStyle(
                      color: Colors.grey, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
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
          )
        ],
      ),
    );
  }
}
