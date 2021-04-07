import 'package:ecommerce/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

import './Screens/HomePage.dart';
import 'Screens/auth_Screens/signInScreen.dart';
import 'Screens/auth_Screens/welcomeScreen.dart';
import 'Screens/auth_Screens/signUpScreen.dart';
=======


void main() {
  runApp(MyApp());
}
Color primaryColor = Color(0xFF00C569);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      debugShowCheckedModeBanner: false,

      title: 'E-Commerce',
      theme: ThemeData(
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
      routes: {
        SignUpScreen.ID :(context) => SignUpScreen(),
        SignInScreen.ID :(context) => SignInScreen(),

      },
=======
      home: SplashScreen(),

    );
  }
}
