import 'package:flutter/material.dart';

import '../controller.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OTP Verification",
                style: TextStyle(fontSize: 32, fontWeight: bold),
              ),
              SizedBox(height: 8),
              Text(
                "Please check your email to see the verification code",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OTP Code",
                    style: TextStyle(fontSize: 21, fontWeight: bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 18, left: 18),
                    width: 70,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFDCDCDC),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 25)),
                    ),
                  ),
                  SizedBox(width: 18),
                  Container(
                    margin: EdgeInsets.only(right: 18, left: 18),
                    width: 70,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFDCDCDC),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
