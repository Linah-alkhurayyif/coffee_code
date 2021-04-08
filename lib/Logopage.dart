import 'package:flutter/material.dart';

class Logopage extends StatefulWidget {
  @override
  _LogopageState createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
        ],
      ),
    );
  }

  Widget backgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Coffee_Code_PLogo.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
