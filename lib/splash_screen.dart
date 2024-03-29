import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myfirstproject/myapplication.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image container
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color.fromRGBO(82, 122, 77, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("images/ICT DIVISION.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // Text Container
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.5,
              margin: EdgeInsets.only(
                bottom: 50,
              ),
              child: Text(
                "Welcome to flutter advance design course."
                    "This course is created by an ICT Division Bangladesh."
                    "Let's Enter in this course.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(0, 0, 255, 1),
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),


            // Button Container InkWell

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                builder: (context) => ProfilePage(),
                ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(0, 0, 255, 0.7),
                      width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(103, 123, 235, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Start",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
