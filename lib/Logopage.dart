import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class Logopage extends StatefulWidget {
  @override
  _LogopageState createState() => _LogopageState();
}

class _LogopageState extends State<Logopage> {
  final Duration initialDelay = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DelayedDisplay(
                    delay: initialDelay,
                    child: Image(
                      image: AssetImage("images/coffee_bean.png"),
                      height: 170,
                      width: 170,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DelayedDisplay(
                    delay: Duration(seconds: initialDelay.inSeconds + 1),
                    child: Text(
                      "Coffee Code",
                      style: TextStyle(
                        fontFamily: "Lora",
                        fontSize: 32.0,
                        color: Color(0xffD5CEBF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
