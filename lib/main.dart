//import 'package:coffee_code/Logopage.dart';
import 'package:coffee_code/UserLocation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: UserLocation(),
      //Logopage(),
    );
  }
}
