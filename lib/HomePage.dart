import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55,left: 15),
            child: Row(
              children: [
                Text("Templates",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,),),
                SizedBox(width: 100,),
                Container(
                  height: 45,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Image(image: AssetImage("Assest/image/accepted.png"),color: Colors.blue.shade300,height: 25,),
                      Text(" Premium",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Image(image: AssetImage("Assest/image/gear.png"),height: 30,),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(5, (index) => Container(
                  margin: EdgeInsets.only(top: 150,left: 20,right: 20),
                  height: 420,
                  width:280,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          blurStyle: BlurStyle.solid,
                        )
                      ]
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 100,),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/data");
            },
            child: Container(
              height: 65,width: 230,
            decoration: BoxDecoration(
              color: Color(0xff01054e),
              borderRadius: BorderRadius.circular(55),
            ),
              child: Center(
                child: Text("Create Your CV",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 58),
            height: 80,
            width: 480,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black26,
                width: 1
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15,right: 30,left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/data");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.people_alt_sharp,color: Colors.black26,size: 30,),
                        Text("Profile",style:TextStyle(color: Colors.black26,fontSize: 18),)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.filter_frames,color: Colors.indigo.shade900,size: 30,),
                      Text("Templates",style:TextStyle(color: Colors.indigo.shade900,fontSize: 18),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.menu_book,color: Colors.black26,size: 30,),
                      Text("CoverLetter",style:TextStyle(color: Colors.black26,fontSize: 18),)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
