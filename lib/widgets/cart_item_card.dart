import 'package:flutter/material.dart';

import '../constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset("assets/images/airpods.png"),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Apple Airpods Pro",
              style: TextStyle(
                fontSize: 16,
              ),
              maxLines: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$ 54",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: tPrimaryColor),
              maxLines: 2,
            ),
          ],
        )
      ],
    );
  }
}
