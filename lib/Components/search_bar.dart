import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(72, 158, 158, 158),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
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
    );
  }
}
