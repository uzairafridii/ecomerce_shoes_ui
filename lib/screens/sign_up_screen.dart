import 'package:ecomerce_shoes_ui/constants/constant.dart';
import 'package:ecomerce_shoes_ui/screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SignUp extends StatefulWidget {
  static var id = "/signUp";

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              const Expanded(child: RegistrationPage()),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                      text: TextSpan(
                          text: "Have an account?",
                          style: textSkipStyle,
                          children: [
                        const WidgetSpan(
                            child: Padding(padding: EdgeInsets.only(left: 4))),
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context)
                                    .pushReplacementNamed(LoginScreen.id);
                              }),
                      ]))
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text("Have an account?"),
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.of(context)
                  //             .pushReplacementNamed(LoginScreen.id);
                  //       },
                  //       child: const Text(
                  //         'Login',
                  //         style: TextStyle(
                  //           color: textColor,
                  //           decorationStyle: TextDecorationStyle.solid,
                  //           decoration: TextDecoration.underline,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  )
            ],
          )),
    ));
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'SKIP',
                style: textSkipStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Create an Account",
            style: styleHeaderText,
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Enter your details here.',
            style: TextStyle(color: textColor),
          ),
          const SizedBox(
            height: 55,
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Email Address',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 42,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 42,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Confirm Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 42,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            style: BorderStyle.solid,
                            width: 0.2,
                            color: Colors.grey),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkValue,
                    onChanged: (value) {
                      setState(() {
                        checkValue = value!;
                      });
                    },
                    visualDensity: const VisualDensity(horizontal: -4),
                    activeColor: textColor,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "I have accept",
                          style: const TextStyle(color: Colors.black87),
                          children: [
                        const WidgetSpan(
                            child: SizedBox(
                          width: 6,
                        )),
                        TextSpan(
                            text: "Terms & Condition", style: buttonTextStyle)
                      ])),
                  // const Padding(
                  //   padding: EdgeInsets.only(left: 4),
                  //   child: Text("I have accept"),
                  // ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Terms & Conditions',
                  //     style: buttonTextStyle,
                  //     textAlign: TextAlign.end,
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      surfaceTintColor: textColor,
                      primary: textColor),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
