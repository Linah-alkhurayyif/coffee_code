import 'package:flutter/material.dart';
import 'package:location/location.dart';

class UserLocation extends StatefulWidget {
  @override
  _UserLocationState createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  String latitudeData="";
  String longitudeData="";
  @override
  void initState() {

    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final locData = await Location().getLocation();
    latitudeData="${locData.latitude}";
    longitudeData="${locData.longitude}";
  }

    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery
          .of(context)
          .size;
      return Scaffold(
        backgroundColor: Color(0xffD5CEBF),
        body: Stack(
          children: <Widget>[
             Container(
                  height: size.height * 0.24,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(150.0)),
                    image: DecorationImage(
                      image: AssetImage("images/Coffee_Code_verlogo.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 10,
                      // ),
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 26,
                        disabledColor: Color(0xffd5cebf),
                        color: Color(0xffd5cebf),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/coffee_bean.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Coffee Code",
                          style: TextStyle(
                            fontFamily: "Lora",
                            fontSize: 22.0,
                            color: Color(0xffD5CEBF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            Center(
              child: Text("latitudeData:$latitudeData\n longitudeData:$longitudeData",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    backgroundColor: Colors.black),
              ),
            )
          ],
        ),
      );
    }
  }
