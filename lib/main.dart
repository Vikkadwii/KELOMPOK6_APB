import 'package:flutter/material.dart';
import 'pages/percentagePage.dart';
import 'pages/profilePage.dart';
import 'pages/moodPage2.dart';
import 'pages/homePage.dart';
import 'registerScreen.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUBES_APB_KEL6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
