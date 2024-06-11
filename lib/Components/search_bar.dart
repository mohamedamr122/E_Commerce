import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 332,
      height: 52,
      decoration: BoxDecoration(
        color: const Color.fromARGB(72, 158, 158, 158),
        borderRadius: BorderRadius.circular(20),
      ),
      // child: TextFormField(
      //   cursorColor: const Color.fromRGBO(23, 78, 73, 1),
      //   decoration: InputDecoration(
      //     prefixIcon: const Icon(
      //       Icons.search,
      //       color: Color.fromRGBO(106, 106, 106, 1),
      //     ),
      //     hintStyle: const TextStyle(fontSize: 17),
      //     hintText: 'Search your trips',
      //     suffixIcon: IconButton(
      //       icon: const Icon(
      //         Icons.mic,
      //         color: Color.fromRGBO(106, 106, 106, 1),
      //       ),
      //       onPressed: () => {},
      //     ),
      //     border: InputBorder.none,
      //     contentPadding: const EdgeInsets.all(15),
      //   ),
      // ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Search',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
