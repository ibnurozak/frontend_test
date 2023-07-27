import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_test/authentication.dart/forgotpassword.dart';
import 'package:frontend_test/authentication.dart/profile/editprofile.dart';

import '../../controller.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final nama = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 17,
            ),
            Text(
              "Profile",
              style: TextStyle(fontWeight: bold, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Container(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxCJpx7clGqaBABXxtj_Nj7Y4LF2cgzJr7RZlQx8M_PyTD5KCR8uF7FzPExQfyS_JDaE8&usqp=CAU",
                      height: 80,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(left: 10, right: 6, top: 5),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editProfil()));
                    },
                    child: Text("Edit Profile"),
                  ),
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
                          controller: nama,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "loremipsum",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 21)),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        child: Column(
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
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Column(
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
                                        color: Color(0xFFDCDCDC)),
                                    child: TextField(
                                      controller: password,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "********",
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 21)),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  CupertinoButton(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "Recovery Password",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPassword()));
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
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
                                          "Save Now",
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
