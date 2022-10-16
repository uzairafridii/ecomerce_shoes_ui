import 'package:ecomerce_shoes_ui/constants/colors.dart';
import 'package:ecomerce_shoes_ui/screens/home.dart';
import 'package:ecomerce_shoes_ui/screens/login_screen.dart';
import 'package:ecomerce_shoes_ui/screens/sign_up_screen.dart';
import 'package:ecomerce_shoes_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce',
      theme: ThemeData.light().copyWith(
        primaryColorDark: textColor,
        primaryColorLight: textColor,
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(accentColor: textColor),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: textColor),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUp.id: (context) => const SignUp(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
