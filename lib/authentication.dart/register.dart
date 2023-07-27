import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_test/controller.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  final email = TextEditingController();
  final password = TextEditingController();
  final nama = TextEditingController();
  bool passwordVisible = false;

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
              SizedBox(height: 5),
              Text(
                "Register Account",
                style: TextStyle(fontSize: 32, fontWeight: bold),
              ),
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
                    "Your Name",
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
                          hintText: "xxxxxx",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 21)),
                    ),
                  ),
                  SizedBox(height: 12),
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
                          color: Color(0xFFDCDCDC),
                        ),
                        child: TextField(
                          controller: password,
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "loremipsum@gmail.com",
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 21),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
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
                        ],
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
                              "Sign Up",
                              style: TextStyle(fontSize: 14, fontWeight: bold),
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
                                  "Sign Up With Google",
                                  style:
                                      TextStyle(fontSize: 14, fontWeight: bold),
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
                          Text("Already Have Account?",
                              style: TextStyle(fontSize: 16)),
                          CupertinoButton(
                              child: Text(
                                "Login",
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
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
