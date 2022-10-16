import 'dart:async';

import 'package:ecomerce_shoes_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static var id = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // handler/future function to delay for 2 seconds
  void delayForSometime() async {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    });

    // Future.delayed(const Duration(seconds: 4), () {
    //   Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    // });
  }

  @override
  void initState() {
    super.initState();
    delayForSometime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 4, child: Image.asset('assets/images/sh2.png')),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: RichText(
                text: const TextSpan(
                    text: 'Buy One',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black
                    ),
                    children: [
                      WidgetSpan(child: SizedBox(width: 16.0,)),
                      TextSpan(
                          text: 'Get One Free',
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.orange,
                          )),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
