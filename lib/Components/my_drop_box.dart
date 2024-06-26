import 'package:flutter/material.dart';

class MyDropBox extends StatefulWidget {
  const MyDropBox({super.key, required this.items, required this.hintText});
  final List<DropdownMenuItem<String>>? items;
  final String hintText;

  @override
  State<MyDropBox> createState() => _MyDropBoxState();
}

class _MyDropBoxState extends State<MyDropBox> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonFormField(
        decoration: const InputDecoration.collapsed(hintText: ''),
        hint: Text(
          widget.hintText,
          style: const TextStyle(color: Colors.black),
        ),
        borderRadius: BorderRadius.circular(5),
        items: widget.items,
        onChanged: (val) {
          setState(() {
            selectedValue = val!;
          });
        },
      ),
    );
  }
}
