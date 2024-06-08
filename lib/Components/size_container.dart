import 'package:flutter/material.dart';

class SizeContainer extends StatelessWidget {
  const SizeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Size',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text('S'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text('M'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text('L'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text('XL'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text('XXL'),
              )
            ],
          )
        ],
      ),
    );
  }
}