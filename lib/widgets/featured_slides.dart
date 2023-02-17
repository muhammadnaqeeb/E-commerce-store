import 'package:flutter/material.dart';
import '../constants.dart';

class FeaturedSlides extends StatelessWidget {
  final String slideImagePath;
  final String title;
  final int price;
  const FeaturedSlides({
    required this.slideImagePath,
    required this.title,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image(
            image: AssetImage(slideImagePath),
            fit: BoxFit.fill,
            height: 190,
            width: double.infinity,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 40,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Featured  ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text("\$$price",
                        style: const TextStyle(
                          color: tPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
