import 'package:coffee_code/RegisterPage.dart';
import 'package:flutter/material.dart';

class VerificationRegisterPage extends StatefulWidget {
  @override
  _VerificationRegisterPageState createState() =>
      _VerificationRegisterPageState();
}

class _VerificationRegisterPageState extends State<VerificationRegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffD5CEBF),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(160.0)),
                        image: DecorationImage(
                          image: AssetImage("images/Coffee_Code_verlogo.jpg"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              iconSize: 26,
                              disabledColor: Color(0xffd5cebf),
                              color: Color(0xffd5cebf),
                              onPressed: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterPage()));
                                });
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/coffee_bean.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Coffee Code",
                              style: TextStyle(
                                fontFamily: "Lora",
                                fontSize: 35.0,
                                color: Color(0xffD5CEBF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 320),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Code is sent to +966XXXXXXXX",
                              style: TextStyle(
                                fontFamily: "Lora",
                                fontSize: 22.0,
                                color: Color(0xff252739),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //for timer run
                            buildTimer(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 500,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 380.0),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildFormverifingphone(),
                                  buildFormverifingphone(),
                                  buildFormverifingphone(),
                                  buildFormverifingphone(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 480.0),
                      child: Center(child: flatbuttionRegister()),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          style: TextStyle(
            fontFamily: "Lora",
            fontSize: 18.0,
            color: Color(0xff55565f),
          ),
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 4.0, end: 0),
          duration: Duration(minutes: 3),
          builder: (context, value, child) => Text(
            "${value.toInt()} min",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

Widget flatbuttionRegister() {
  return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        child: Text(
          "     Check      ",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(top: 15, bottom: 15, right: 80, left: 80),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          primary: Color(0xff252739),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          // setState(() {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => VerificationRegisterPage()));
          // });
        },
      )

      // RaisedButton(
      //   onPressed: () {
      //     // setState(() {
      //     //   Navigator.push(
      //     //       context,
      //     //       MaterialPageRoute(
      //     //           builder: (context) => VerificationRegisterPage()));
      //     // });
      //   },
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      //   padding: EdgeInsets.all(0.0),
      //   child: Ink(
      //     decoration: BoxDecoration(
      //         color: Color(0xff252739),
      //         borderRadius: BorderRadius.circular(30.0)),
      //     child: Container(
      //       constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
      //       alignment: Alignment.center,
      //       child: Text(
      //         "Check",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //     ),
      //   ),
      // ),
      );
}

Widget buildFormverifingphone() {
  return Form(
      child: Row(
    children: [
      Container(
          width: 70.0,
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14.0)),
          child: Center(
              child: TextFormField(
            cursorColor: Color(0xff252739),
            textAlign: TextAlign.center,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color(0xff252739),
                fontSize: 22,
              ),
              border: InputBorder.none,
            ),
          ))),
    ],
  ));
}
