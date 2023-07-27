import 'package:flutter/material.dart';
import 'package:frontend_test/authentication.dart/otpverification.dart';

import '../controller.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final fPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 32, fontWeight: bold),
              ),
              SizedBox(height: 8),
              Text(
                "Enter your Email account to reset your password",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xFFDCDCDC),
                ),
                child: TextField(
                  controller: fPassword,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "xxxxxx",
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 21)),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 50,
                color: Color(0xFF008CFF),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => otpVerification()));
                    },
                    child: Text("Reset Password")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
