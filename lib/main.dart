import 'package:flutter/material.dart';
import 'package:login_ui2/Screens/Home_screen/home_screen.dart';
import 'package:login_ui2/Screens/login.dart';
import 'package:login_ui2/Screens/signup.dart';
import 'package:login_ui2/Screens/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: MyLogin(),
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLogin(),
        'signup': (context) => const SignUp(),
        'verify': (context) => const Verify(),
        'homescreen': (context) => const HomeScreen(),
      },
    );
  }
}
