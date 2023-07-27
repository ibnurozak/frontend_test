import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_test/authentication.dart/profile/profile.dart';

import '../../controller.dart';

class editProfil extends StatefulWidget {
  const editProfil({super.key});

  @override
  State<editProfil> createState() => _editProfilState();
}

class _editProfilState extends State<editProfil> {
  final fNama = TextEditingController();
  final lNama = TextEditingController();
  final location = TextEditingController();
  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 99),
            Text(
              "Profile",
              style: TextStyle(fontWeight: bold, color: Colors.black),
            ),
            SizedBox(width: 93),
            CupertinoButton(
                child: Column(
                  children: [Text("Done")],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                })
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxCJpx7clGqaBABXxtj_Nj7Y4LF2cgzJr7RZlQx8M_PyTD5KCR8uF7FzPExQfyS_JDaE8&usqp=CAU",
                    height: 80,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  CupertinoButton(
                    child: Column(
                      children: [
                        Text(
                          "Change Profile",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(height: 17),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Color(0xFFDCDCDC)),
                          child: TextField(
                            controller: fNama,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Lorem",
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 21)),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Last Name",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              SizedBox(height: 17),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xFFDCDCDC)),
                                child: TextField(
                                  controller: lNama,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Ipsum",
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 21)),
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black),
                                    ),
                                    SizedBox(height: 17),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Color(0xFFDCDCDC)),
                                      child: TextField(
                                        controller: location,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Sidoarjo, Indonesia",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 14,
                                                    horizontal: 21)),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mobile Number",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black),
                                          ),
                                          SizedBox(height: 17),
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                color: Color(0xFFDCDCDC)),
                                            child: TextField(
                                              controller: number,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "+62 82139488953",
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 14,
                                                          horizontal: 21)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
