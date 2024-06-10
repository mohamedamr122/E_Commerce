import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static const String routeName = 'SearchPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(72, 158, 158, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  cursorColor: const Color.fromRGBO(23, 78, 73, 1),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(106, 106, 106, 1),
                    ),
                    hintStyle: const TextStyle(fontSize: 17),
                    hintText: 'Search your trips',
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.mic,
                        color: Color.fromRGBO(106, 106, 106, 1),
                      ),
                      onPressed: () => {},
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Cancel',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Recent searches',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'Clear',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
