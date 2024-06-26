import 'package:e_commerce/Components/my_text_Field.dart';
import 'package:e_commerce/Components/navigator_button.dart';
import 'package:e_commerce/Components/small_text_field.dart';
import 'package:flutter/material.dart';

class NewCardEditPage extends StatelessWidget {
  const NewCardEditPage({super.key});
  static const String routeName = 'NewCardEditPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add new card',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ClipRRect(
            child: Image(image: AssetImage('assets/payment_screen/card.png')),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Cardholder Name',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          MyTextField(
            keyboardType: null,
            lablelText: '',
            obscureText: false,
            suffixIcon: null,
            fillColor: Colors.white,
            validator: null,
            controller: null,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Card Number',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xff4B4B4B),
              ),
            ),
          ),
          MyTextField(
            keyboardType: null,
            lablelText: '',
            obscureText: false,
            suffixIcon: null,
            fillColor: Colors.white,
            validator: null,
            controller: null,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Expires',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B4B4B),
                      ),
                    ),
                  ),
                  SmallTextField(
                    lablelText: 'MM/YY',
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'CVV',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4B4B4B),
                      ),
                    ),
                  ),
                  SmallTextField(
                    lablelText: 'Secure Code',
                  )
                ],
              ),
            ],
          ),
          MyNavigatorButton(
              textColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
              height: 41,
              width: 345,
              color: const Color(0xff0D4641),
              text: 'Add card')
        ],
      ),
    );
  }
}
