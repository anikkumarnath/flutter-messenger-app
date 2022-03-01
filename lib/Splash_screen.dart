import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:anikkumarnath/TimeLinePage.dart';
import 'package:anikkumarnath/profile_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(186, 194, 192, .5),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 400,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color.fromRGBO(158, 245, 44, 1),
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/anik.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //Text Container

              Container(
                height: 200,
                width: 350,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome To My Messenger App\n\n"
                    "Which have been created by Flutter\n\n"
                    "It is a Cross Platform App\n\n",
                    style: TextStyle(
                        color: Color.fromARGB(255, 250, 246, 3),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        wordSpacing: 5,
                        height: 1,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationColor: Color.fromRGBO(44, 209, 29, 1)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Enter button container
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TimeLinePage(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 3,
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(19, 117, 11, 1),
                    ),
                    color: Color.fromRGBO(105, 219, 143, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
