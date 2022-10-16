import 'package:ecomerce_shoes_ui/constants/colors.dart';
import 'package:ecomerce_shoes_ui/constants/constant.dart';
import 'package:ecomerce_shoes_ui/screens/home.dart';
import 'package:ecomerce_shoes_ui/screens/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static var id = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text('Login', style: TextStyle(
        //     color: Colors.black,
        //   ),),
        //   elevation: 2,
        //   backgroundColor: Colors.white,
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            children: [
              const Expanded(child: LoginForm()),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                      text: TextSpan(
                          text: "Don't have an account?",
                          style: textSkipStyle,
                          children: [
                        const WidgetSpan(
                            child: SizedBox(
                          width: 4,
                        )),
                        TextSpan(
                            text: 'Register',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, SignUp.id);
                              }),
                      ]))
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text("Don't have an account?"),
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.pushNamed(context,SignUp.id);
                  //       },
                  //       child: const Text(
                  //         'Register',
                  //         style: TextStyle(
                  //           color: textColor,
                  //           decorationStyle: TextDecorationStyle.solid,
                  //           decoration: TextDecoration.underline,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUp.id);
            },
            child: Text(
              'SKIP',
              textAlign: TextAlign.end,
              style: textSkipStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          "Let's Sign You In",
          style: styleHeaderText,
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'To Continue, first Verify that its You.',
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
              height: 2,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    surfaceTintColor: textColor,
                    primary: textColor),
                child: const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )),
      ]),
    );
  }
}

/*
   Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 1,child: Image.asset('assets/images/sh2.png',width: 250, height: 250,)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    child: Form(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Your Email',
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0XFF559ACF),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Color(0XFF929ACF),
                                  ),
                                ),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                labelText: 'Email'),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Color(0XFF559ACF),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Color(0XFF929ACF),
                                  ),
                                ),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(12),
                                // ),
                                labelText: 'Password'),
                            obscureText: true,
                            keyboardType: TextInputType.phone,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
 */
