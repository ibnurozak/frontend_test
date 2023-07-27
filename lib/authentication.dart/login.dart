import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_test/authentication.dart/forgotpassword.dart';
import 'package:frontend_test/authentication.dart/register.dart';

import '../controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final email = TextEditingController();
  final password = TextEditingController();
  bool passwordVisible = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text("Hello Again!",
                  style: TextStyle(fontSize: 32, fontWeight: bold)),
              SizedBox(height: 8),
              Text(
                "Fill your details or continue with social media",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xFFDCDCDC)),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "loremipsum@gmail.com",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 21)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFFDCDCDC),
                        ),
                        child: TextField(
                          controller: password,
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "********",
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 21),
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      CupertinoButton(
                        child: Column(
                          children: [
                            Text(
                              "Recovery Password",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                      ),
                      SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF008CFF)),
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                            )),
                      ),
                      SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFDCDCDC),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png",
                                  height: 22,
                                ),
                                SizedBox(width: 14),
                                Text(
                                  "Sign In With Google",
                                  style:
                                      TextStyle(fontSize: 16, fontWeight: bold),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New User?",
                            style: TextStyle(fontSize: 16),
                          ),
                          CupertinoButton(
                              child: Text(
                                "Create Account",
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => Register()));
                              }),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
