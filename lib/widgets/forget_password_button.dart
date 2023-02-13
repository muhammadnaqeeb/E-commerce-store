import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  final Icon btnIcon;
  final String title;
  final String subTitle;
  final VoidCallback onPress;
  const ForgetPasswordButtonWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Row(
          children: [
            btnIcon,
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kSubHeadingStyle,
                ),
                Text(subTitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
