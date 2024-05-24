import 'package:flutter/material.dart';
import 'package:resume_app/CV_Pdf_invoice.dart';
import 'package:resume_app/Education_page.dart';
TextEditingController hobb=TextEditingController();
class Hobbies_Page extends StatefulWidget {
  const Hobbies_Page({super.key});

  @override
  State<Hobbies_Page> createState() => _Hobbies_PageState();
}

class _Hobbies_PageState extends State<Hobbies_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 35,
                      )),
                  Text(
                    "Languages ",
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
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20),
              child: Row(
                children: [
                  Text("Languages (optional)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            ...List.generate(hobbieslist.length, (index) => textfeildatare4(hint: "Hindi"),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              setState(() {
                TextEditingController hobb=TextEditingController();
                hobbieslist.add(hobb);
              });
            }, child: Text("   Add Languages ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900,height: 3,letterSpacing: 1.2),),),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 250,bottom: 20),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => InvoicePagePdf(),));
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
                      Text("Creat CV   ",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                      Icon(Icons.arrow_forward,size: 25,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


List hobbieslist=[hobb];
Column textfeildatare4({ String? hint, TextEditingController? edit}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15,left: 25,right: 25,bottom: 15),
        child: TextFormField(
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
      ),

    ],
  );
}
