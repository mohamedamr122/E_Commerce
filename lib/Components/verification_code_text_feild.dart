import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCodeTextField extends StatelessWidget {
  const VerificationCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(7),
      ),
      height: 49,
      width: 57,
      child: TextFormField(
        onChanged: (value){
          if (value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.titleLarge,
        inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
