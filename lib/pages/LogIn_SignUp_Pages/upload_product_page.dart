import 'dart:io';

import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Components/app_bar_text.dart';

class UploadProductPage extends StatefulWidget {
  const UploadProductPage({super.key});
  static const String routeName = 'UploadProductPage';

  @override
  State<UploadProductPage> createState() => _UploadProductPageState();
}

class _UploadProductPageState extends State<UploadProductPage> {
  File? _imageFile;
  final picker = ImagePicker();
  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarText(text: 'B&S'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Image.asset('assets/🦆 icon _Chat bot_.png'),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_border_rounded))
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){_pickImage;},
                child: Container(
                  height: 66,
                  width: 181,
                  color: const Color(0xffD9D9D9),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '+',
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '   Add photos',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  fillColor: const Color(0xffD9D9D9),
                  suffixIcon: null,
                  lablelText: 'Name product',
                  obscureText: false,
                  controller: null,
                  validator: null,
                  keyboardType: null),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  fillColor: const Color(0xffD9D9D9),
                  suffixIcon: null,
                  lablelText: 'Some details',
                  obscureText: false,
                  controller: null,
                  validator: null,
                  keyboardType: null),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  fillColor: const Color(0xffD9D9D9),
                  suffixIcon: null,
                  lablelText: 'Offers',
                  obscureText: false,
                  controller: null,
                  validator: null,
                  keyboardType: null),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                  fillColor: const Color(0xffD9D9D9),
                  suffixIcon: const Text('EGP',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                  lablelText: 'Price',
                  obscureText: false,
                  controller: null,
                  validator: null,
                  keyboardType: null),
              const SizedBox(
                height: 20,
              ),
              MyNavigatorButton(textColor: Colors.white, onTap: (){}, height: 50, width: 144, color: const Color(0xff0D4641), text: 'Publish')
            ],
          ),
        ),
      ),
    );
  }
}
