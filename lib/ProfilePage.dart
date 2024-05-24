import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/Contact_Page.dart';
import 'package:resume_app/HomePage.dart';

import 'global_var.dart';

XFile? ximg;
File? fimg, _file;
ImagePicker imgpick = ImagePicker();

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

TextEditingController txtfullname = TextEditingController();
TextEditingController txtposition = TextEditingController();
TextEditingController txtaboutme = TextEditingController();

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap:()
                      {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_circle_left_outlined,size: 35,)),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade900,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Image(
                          image: AssetImage("Assest/image/accepted.png"),
                          color: Colors.blue.shade300,
                          height: 25,
                        ),
                        Text(
                          " Premium",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage("Assest/image/gear.png"),
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 23, left: 30),
                    child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.black26,
                        backgroundImage:
                            (fimg != null) ? FileImage(fimg!) : null),
                  ),
                ]),
                Column(
                  children: [
                    IconButton(
                        onPressed: () async {
                          ximg = await imgpick.pickImage(
                              source: ImageSource.camera);
                         setState(() {
                           if (ximg != null) {
                             fimg = File(ximg!.path);
                           }
                         });
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 25,
                        )),
                    IconButton(
                        onPressed: () async {
                          ximg = await imgpick.pickImage(
                              source: ImageSource.gallery);
                         setState(() {
                           if (ximg != null) {
                             fimg = File(ximg!.path);
                           }
                         });
                        },
                        icon: Icon(
                          Icons.image,
                          size: 25,
                        ))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFeildDatare(
                title: "Full Name", hint: "Full Name", edit: txtfullname),
            SizedBox(
              height: 20,
            ),
            TextFeildDatare(
                title: "Position/title",
                hint: "Account Manger",
                edit: txtposition),
            SizedBox(
              height: 20,
            ),
            TextFeildDatare(
                title: "About Me ", hint: "About Me", edit: txtaboutme),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 250),
              child: InkWell(
                onTap: () {
                  fullname=txtfullname.text;
                  position=txtposition.text;
                  aboutme=txtaboutme.text;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactPage(),

                  ));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next Step  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 68),
              height: 80,
              width: 480,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black26, width: 1)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.people_alt_sharp,
                          color: Colors.indigo.shade900,
                          size: 30,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.indigo.shade900, fontSize: 18),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.filter_frames,
                            color: Colors.black26,
                            size: 30,
                          ),
                          Text(
                            "Templates",
                            style:
                                TextStyle(color: Colors.black26, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: Colors.black26,
                          size: 30,
                        ),
                        Text(
                          "CoverLetter",
                          style: TextStyle(color: Colors.black26, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column TextFeildDatare(
      {String? title, String? hint, TextEditingController? edit}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
          child: TextFormField(
            controller: edit,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
                hintText: hint!,
                fillColor: Colors.indigo.shade50,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(75),
                    borderSide: BorderSide(
                      color: Colors.white,
                    )),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(75),
                )),
          ),
        )
      ],
    );
  }
}
