import 'package:flutter/material.dart';
import 'package:resume_app/Education_page.dart';
import 'package:resume_app/global_var.dart';

import 'HomePage.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}
TextEditingController txtemail=TextEditingController();
TextEditingController txtnum=TextEditingController();
TextEditingController txtadd=TextEditingController();
TextEditingController txtweb=TextEditingController();
class _ContactPageState extends State<ContactPage> {
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
                    "Contact",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 90,
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
            SizedBox(height: 10,),
        
            SizedBox(height: 20,),
            textfeildatare1(title: "Email Address",hint: "sumit123@gmail.com",edit:txtemail ),
            SizedBox(height: 20,),
            textfeildatare1(title: "Phone No.",hint: "9616925877",edit: txtnum),
            SizedBox(height: 20,),
            textfeildatare1(title: "Address",hint: "Address",edit: txtadd),
            SizedBox(height: 20,),
            textfeildatare1(title: "Personal Web",hint: "sumitpatil.com",edit: txtweb),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(top: 50,left: 250),
              child: InkWell(
                onTap: () {
                  email=txtemail.text;
                  ph=txtnum.text;
                  address=txtadd.text;
                  website=txtweb.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EducationPage(),));
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
                      Text("Next Step  ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                      Icon(Icons.arrow_forward,size: 25,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 165),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));

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
                            style: TextStyle(color: Colors.black26, fontSize: 18),
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

  Column textfeildatare1({String? title, String? hint, TextEditingController? edit}) {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text("$title",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 25,right: 25),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  controller: edit,
                  decoration: InputDecoration(
                    hintText: "$hint",
                    fillColor: Colors.indigo.shade50,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(75),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(75),
                    ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(75),
                      )

                  ),
                ),
              )
            ],
          );
  }
}
