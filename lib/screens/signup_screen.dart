import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/outline_btn_with_image.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  // this will avoid any memory leaks
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var isportrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final statusBsrHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: isportrait ? height - statusBsrHeight : null,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Get Started",
                  style: kHeadingStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text("Start exploring & discover the perfect product"),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  label: "Enter your Name",
                  icon: const Icon(Icons.person_outline_rounded),
                  obscureText: false,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  label: "Enter your Email",
                  icon: const Icon(Icons.email_rounded),
                  obscureText: true,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  label: "Enter your Phone No.",
                  icon: const Icon(Icons.numbers_rounded),
                  obscureText: false,
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  label: "Enter your Password",
                  icon: const Icon(Icons.password_rounded),
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomButton(
                  text: "SIGNUP",
                  onPress: () {},
                ),
                const SizedBox(
                  height: 12,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text("OR"),
                ),
                const SizedBox(
                  height: 12,
                ),
                OutlineBtnWithImage(
                    image: const Image(
                      image: AssetImage("assets/images/google.png"),
                      height: 22,
                    ),
                    label: "Sign Up with google",
                    onPress: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an Account?"),
                    TextButton(
                      child: const Text("LOGIN"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
