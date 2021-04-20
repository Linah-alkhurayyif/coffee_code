//import 'package:coffee_code/Logopage.dart';
import 'package:flutter/material.dart';
import 'RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RegisterPage(),
      //Logopage(),
    );
  }
}
