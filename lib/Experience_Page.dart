import 'package:flutter/material.dart';
import 'package:resume_app/Skills_Page.dart';
import 'package:resume_app/global_var.dart';

import 'Education_page.dart';
import 'HomePage.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}
TextEditingController txtcompany=TextEditingController();
TextEditingController txttitle=TextEditingController();
TextEditingController txtjobtype=TextEditingController();
TextEditingController txtfdate=TextEditingController();
TextEditingController txtldate=TextEditingController();
class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55,left: 10),
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, icon:Icon(Icons.arrow_circle_left_outlined,size: 35,)),
                  Text(
                    "Experience",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 50,
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

            SizedBox(height: 27,),
            textfeildatare3(title: "Company/Organization Name",hint: "red & white",edit: txtcompany),
            SizedBox(height: 20,),
            textfeildatare3(title: "Position/Title",hint: "Account Manger",edit: txttitle),
            SizedBox(height: 20,),
            textfeildatare3(title: "Job-Type",hint: "Full Time",edit: txtjobtype),
            SizedBox(height: 20,),
            textfeildatare3(title:"From Date",hint:"2018/06/09",edit: txtfdate),

            SizedBox(height: 20,),
            textfeildatare3(title:"To Date",hint:"2023/06/09",edit: txtldate),

            Padding(
              padding: const EdgeInsets.only(top: 50,left: 250,bottom: 20),
              child: InkWell(
                onTap: () {
                  company=txtcompany.text;
                  title=txttitle.text;
                  job=txtjobtype.text;
                  fromDatr=txtfdate.text;
                  endDate=txtldate.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SkillsPage(),));
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
            SizedBox(height: 37,),
            Container(
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

  Column textfeildatare3({String? title, String? hint, TextEditingController? edit}) {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text(title!,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 25,right: 25),
                child: TextFormField(
                  controller: edit,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: hint,
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
