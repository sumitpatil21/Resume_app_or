import 'package:flutter/material.dart';
import 'package:resume_app/HomePage.dart';
import 'package:resume_app/PlaceScreen.dart';
import 'package:resume_app/ProfilePage.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(context) => PlaceScreen(),
        "/home":(context) => HomePage(),
        "/data":(context) => ProfilePage(),
      },
    );
  }
}


