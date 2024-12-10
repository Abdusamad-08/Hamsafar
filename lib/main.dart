import 'package:app_1sss/loginPage.dart';
import 'package:app_1sss/login_page.dart';
import 'package:app_1sss/splash.dart';
import 'package:app_1sss/perekhod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}
