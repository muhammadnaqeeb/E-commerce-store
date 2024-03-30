import 'package:flutter/material.dart';

class CustomOutlineBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomOutlineBtn(
      {super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black),
        //padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      onPressed: onPress,
      child: Text(text),
    );
  }
}
