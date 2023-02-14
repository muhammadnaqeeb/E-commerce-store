import 'package:ecommerce_app/screens/forgetPasswordScreens/forget_password_mail_screen.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../services/firebase_auth_methods.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/forget_password_button.dart';
import '../widgets/outline_btn_with_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  "Welcome",
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
                  label: "Enter your Email",
                  icon: const Icon(Icons.email_rounded),
                  obscureText: false,
                  controller: emailController,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: const Text("Forget Password ?"),
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        context: context,
                        builder: (context) => Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Make Selection!",
                                style: kHeadingStyle,
                              ),
                              const Text(
                                  "Select one of the option given below to reset your password"),
                              const SizedBox(
                                height: 30,
                              ),
                              ForgetPasswordButtonWidget(
                                  btnIcon: const Icon(
                                    Icons.email_rounded,
                                    size: 60,
                                  ),
                                  title: "Email",
                                  subTitle: "Reset via Mail Verification",
                                  onPress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetPasswordMailScreen()));
                                  }),
                              const SizedBox(
                                height: 20,
                              ),
                              ForgetPasswordButtonWidget(
                                btnIcon: const Icon(
                                  Icons.mobile_friendly_rounded,
                                  size: 60,
                                ),
                                title: "Phone No",
                                subTitle: "Reset via Phone Verification",
                                onPress: () {},
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                CustomButton(
                  text: "LOGIN",
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
                    label: "Sign In with google",
                    onPress: () {
                      context
                          .read<FirebaseAuthMethods>()
                          .signInWithGoogle(context);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account?"),
                    TextButton(
                      child: const Text("SIGNUP"),
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
