import 'package:flutter/material.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  final String slideImagePath;
  final String title;
  final int price;
  const ProductCard({
    Key? key,
    required this.slideImagePath,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: const Color.fromARGB(14, 0, 0, 0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(children: [
                Center(
                  child: Image(
                    image: AssetImage(slideImagePath),
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 14,
                    child: Icon(
                      Icons.favorite,
                      size: 19,
                      color: tPrimaryColor,
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ $price",
                        style: kSubHeadingStyle,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star_rounded,
                            color: Color.fromARGB(255, 255, 217, 3),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
