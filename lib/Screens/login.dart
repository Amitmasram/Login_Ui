import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:login_ui2/Screens/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Squaretile.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  static const colorizeColors = [
    Colors.white,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'RobotoSla',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 22, top: 60),
              child: SizedBox(
                width: 250.0,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Welcome ',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  totalRepeatCount: 20,
                  isRepeatingAnimation: true,
                  onTap: () {
                    {
                      print("Tap Event");
                    }
                  },
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 130, right: 35, left: 35),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                    size: 50,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.email_outlined),
                      prefixIconColor: Colors.purpleAccent,
                      focusColor: Colors.purpleAccent,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(11)),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.visibility_off_outlined),
                        prefixIconColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(13),
                        ),
                      )),
                  const SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontFamily: 'RobotoSla',
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'homescreen');
                        },
                        child: Center(
                          child: Container(
                              height: 50,
                              width: 270,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'RobotoSla',
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Or continue with',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      // google button
                      SquareTile(imagePath: 'assets/google3.png'),
                      SizedBox(
                        width: 25,
                      ),
                      //apple button

                      SquareTile(imagePath: 'assets/apple6.png')
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6)),
                      const Text(
                        'Don\'t have an account ?',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'signup');
                        },
                        child: Center(
                          child: Container(
                              height: 46,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent,
                                      width: 2)),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'RobotoSla',
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                      )
                      // Text(
                      //     'Sign Up',
                      //     style: TextStyle(
                      //         color: Colors.deepPurpleAccent,
                      //         fontFamily: 'RobotoSla',
                      //         fontSize: 20,
                      //         decoration: TextDecoration.underline),
                      //   ),
                    ],
                  )
                ])))
          ],
        ),
      ),
    );
  }
}
