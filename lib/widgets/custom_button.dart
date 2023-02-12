import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: tPrimaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          side: const BorderSide(color: tPrimaryColor),
          padding: const EdgeInsets.symmetric(vertical: 15)),
      child: Text(text),
    );
  }
}
