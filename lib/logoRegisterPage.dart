import 'package:flutter/material.dart';

class LogoRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Coffee_Code_logo.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 280,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/coffee_bean.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "  Hi👏,",
                      style: TextStyle(
                        color: Color(0xffD5CEBF),
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Center(
                        child: Text(
                      "Please Enter your Name and Phone ",
                      style: TextStyle(
                        color: Color(0xffD5CEBF),
                        fontSize: 20,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
