import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 8), () {
     Navigator.of(context).pushNamed("/home");
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage("Assest/image/curriculum-vitae.png"),height: 130,alignment: Alignment.center,)),
          SizedBox(height: 45,),
          Text("JUBI-CV Maker",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.white,),)
        ],
      )
    );
  }
}
