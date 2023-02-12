import 'package:flutter/material.dart';

class OutlineBtnWithImage extends StatelessWidget {
  final VoidCallback onPress;
  final String label;
  final Image image;
  const OutlineBtnWithImage({
    Key? key,
    required this.onPress,
    required this.label,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPress,
      icon: image,
      label: Text(label),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.black),
        //padding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }
}
