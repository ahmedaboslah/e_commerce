

import 'dart:html';

import 'package:e_commerce/screens/HomePage.dart';
import 'package:e_commerce/screens/Loginpage.dart';
import 'package:e_commerce/screens/RegisterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage':(context) => HomePage(),
        'LoginPage':(context) => LoginPage(),
        'RegisterPage':(context) => RegisterPage()
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage()
      );
  }
}
