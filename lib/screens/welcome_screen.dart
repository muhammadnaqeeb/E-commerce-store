import 'dart:ui';

import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_outline_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var isportrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          height: isportrait ? height : null,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: const AssetImage("assets/images/welcome.png"),
                    height: height * 0.6),
                Column(
                  children: const [
                    Text(
                      "Shop, Swipe & Smile.",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Start exploring now and discover the perfect products for you. Happy shopping!",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomOutlineBtn(text: "LOGIN"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomButton(text: "SIGNUP"),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
