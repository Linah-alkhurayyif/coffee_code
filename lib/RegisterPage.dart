import 'package:coffee_code/logoRegisterPage.dart';
import 'package:flutter/material.dart';

import 'VerificationRegisterPage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD5CEBF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              LogoRegisterPage(),
              formRegistertion(),
              flatbuttionRegister()
            ],
          ),
        ));
  }

  Widget formRegistertion() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Name",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Color(0xff252739),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: TextFormField(
            cursorColor: Color(0xff252739),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Enter your Name',
              hintStyle: TextStyle(
                color: Color(0xff252739),
                fontSize: 18,
              ),
              prefixIcon: Icon(
                Icons.perm_identity_outlined,
                color: Color(0xff252739),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Phone",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Color(0xff252739),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          child: TextFormField(
            cursorColor: Color(0xff252739),
            textInputAction: TextInputAction.send,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Enter your phone number',
              hintStyle: TextStyle(
                color: Color(0xff252739),
                fontSize: 18,
              ),
              prefixIcon: Icon(
                Icons.phone,
                color: Color(0xff252739),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ]),
    );
  }

  Widget flatbuttionRegister() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VerificationRegisterPage()));
          });
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              color: Color(0xff252739),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Send Code",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
