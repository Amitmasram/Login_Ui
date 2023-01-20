import 'package:flutter/material.dart';

import '../Squaretile.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(top: 70, right: 35, left: 40),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                    height: 45,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.person),
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
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email or No',
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
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'verify');
                        },
                        child: Center(
                          child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'RobotoSla',
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 23,
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
                          child: Text('Or Sign up with',
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
                    height: 27,
                  ),
                ])))
          ],
        ),
      ),
    );
    ;
  }
}
