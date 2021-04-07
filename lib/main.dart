import 'package:flutter/material.dart';
import 'Screens/auth_Screens/signInScreen.dart';
import 'Screens/auth_Screens/welcomeScreen.dart';
import 'Screens/auth_Screens/signUpScreen.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = Color(0xFF00C569);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        primaryColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      home: WelcomeScreen(),
      routes: {
        SignUpScreen.ID: (context) => SignUpScreen(),
        SignInScreen.ID: (context) => SignInScreen(),
      },
    );
  }
}
