import 'package:flutter/material.dart';

class CreatedForYouMens extends StatelessWidget {
  const CreatedForYouMens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {},
              child: const ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image(
                  width: 174,
                  height: 201,
                  image: AssetImage('assets/main_screen/T-Shirt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              'T-Shirt',
              style: TextStyle(fontSize: 17.3, fontWeight: FontWeight.w500),
            ),
            const Text(
              '250',
              style: TextStyle(fontSize: 16.3, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => {},
              child: const ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image(
                  width: 174,
                  height: 201,
                  image: AssetImage('assets/main_screen/T-Shirt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              'T-Shirt',
              style: TextStyle(fontSize: 17.3, fontWeight: FontWeight.w500),
            ),
            const Text(
              '250',
              style: TextStyle(fontSize: 16.3, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}