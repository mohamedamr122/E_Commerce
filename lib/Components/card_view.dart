import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String imagePass;
  final String contentText;
  const CardView(
      {super.key, required this.contentText, required this.imagePass});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: Image(
              width: 244,
              height: 163,
              image: AssetImage(imagePass),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 17,
              left: 11,
            ),
            child: SizedBox(
              width: 90,
              child: Text(
                contentText,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 19,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
          )
        ],
      ),
    );
  }
}
