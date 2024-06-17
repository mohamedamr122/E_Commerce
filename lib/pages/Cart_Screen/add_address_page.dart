import 'package:e_commerce/Components/app_bar_text.dart';
import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:flutter/material.dart';

class AddAddressPage extends StatelessWidget {
  AddAddressPage({super.key});
  static const String routeName = 'AddAddressPage';
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(text: 'BSB'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Location Infromation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Image.asset(
                'assets/checkout_screen/location.png',
                width: 130,
                height: 87,
              )
            ],
          ),
          const Text(
            'Additional Address Details',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          MyTextField(keyboardType: null,
              fillColor: Colors.white,
              suffixIcon: null,
              lablelText: 'where do you want us to drop the package?',
              obscureText: false,
              controller: addressController,
              validator: null),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'PERSONAL INFORMATION',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Mobile Number',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          MyTextField(keyboardType: null,
              fillColor: Colors.white,
              suffixIcon: null,
              lablelText: 'Enter your number with code',
              obscureText: false,
              controller: addressController,
              validator: null),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'First Name',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          MyTextField(keyboardType: null,
              fillColor: Colors.white,
              suffixIcon: null,
              lablelText: 'Enter your first name',
              obscureText: false,
              controller: addressController,
              validator: null),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Last Name',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          MyTextField(keyboardType: null,
              fillColor: Colors.white,
              suffixIcon: null,
              lablelText: 'Enter your last name',
              obscureText: false,
              controller: addressController,
              validator: null),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Address Label (Optional)',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 23,
                  width: 79,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Home',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 23,
                  width: 79,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Work',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MyNavigatorButton(
              textColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
              height: 57,
              width: 333,
              color: const Color(0xff0D4641),
              text: 'SAVE ADDRESS')
        ],
      ),
    );
  }
}
