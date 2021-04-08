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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DelayedDisplay(
                  delay: initialDelay,
                  child: Text(
                    "Coffee Code",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 1),
                  child: Text(
                    "World",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: initialDelay.inSeconds + 2),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
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
