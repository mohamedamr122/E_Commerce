import 'package:e_commerce/Components/my_drop_box.dart';
import 'package:flutter/material.dart';
import '../components/navigator_button.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  static const String routeName = 'SettingPage';
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MyDropBox(items: const [
            DropdownMenuItem(
              value: 'Egypt',
              child: Text('Egypt'),
            ),
            DropdownMenuItem(
              value: 'Morocco',
              child: Text('Morocco'),
            ),
            DropdownMenuItem(
              value: 'Sudan',
              child: Text('Sudan'),
            )
          ], hintText: 'Country'),
          MyDropBox(items: const [
            DropdownMenuItem(
              value: 'AR',
              child: Text('AR'),
            ),
            DropdownMenuItem(
              value: 'EN',
              child: Text('EN'),
            ),
            DropdownMenuItem(
              value: 'FR',
              child: Text('FR'),
            )
          ], hintText: 'language'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Notifaction',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Switch(
                  trackOutlineColor: const WidgetStatePropertyAll(Colors.white),
                  inactiveTrackColor: Colors.grey[350],
                  activeColor: const Color(0xff0D4641),
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  })
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                style: const ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(Colors.white)),
                child: const Text(
                  'Delete Account',
                  style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {},
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
              height: 41,
              width: 345,
              color: const Color(0xff0D4641),
              text: 'CONFIRM')
        ],
      ),
    );
  }
}
