import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'dart:async';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  Timer? _timer;
  int _start = 59;

  void startTimer() {
    const twoSec = Duration(seconds: 2);
    _timer = Timer.periodic(
      twoSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: const Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter 6-Digit OTP Code",
                  style: kHeadingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    "We have send verification code to your email, please check your email"),
                const SizedBox(
                  height: 20,
                ),
                // OTP Boxes
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  cursorColor: tPrimaryColor,
                  borderColor: tPrimaryColor,
                  focusedBorderColor: tPrimaryColor,
                  // get complete code enter by user
                  onSubmit: (code) {
                    print(code);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text("Code expires in: "),
                    Text(
                      "00:$_start",
                      style: kSubHeadingStyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text("Don't receive code?"),
                    TextButton(
                      child: const Text("Resend Code"),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(text: "NEXT", onPress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
