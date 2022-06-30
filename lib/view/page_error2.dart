import 'package:email_validator/constants/my_string.dart';
import 'package:email_validator/view/page_error1.dart';
import 'package:email_validator/widgets/Fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorTwo extends StatefulWidget {
  ErrorTwo({Key? key}) : super(key: key);

  @override
  State<ErrorTwo> createState() => _ErrorTwoState();
}

class _ErrorTwoState extends State<ErrorTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Logo",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                milliSecondsDuration: 1300,
                translateEndValue: -10,
                translateStartValue: 20,
                child: Text(
                  MyStrings.error404,
                  style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
                ),
              ),
              FadeAnimation(
                milliSecondsDuration: 1100,
                translateEndValue: -20,
                translateStartValue: 15,
                child: Text(
                  MyStrings.errorText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              FadeAnimation(
                milliSecondsDuration: 1000,
                translateEndValue: -20,
                translateStartValue: 15,
                child: Text(
                  MyStrings.excuseText,
                  style: TextStyle(
                    fontSize: 23,
                    color: Color.fromARGB(255, 68, 68, 68),
                  ),
                ),
              ),
              Center(
                child: FadeAnimation(
                  milliSecondsDuration: 800,
                  translateEndValue: -20,
                  translateStartValue: 15,
                  child: Lottie.asset("lib/assets/images/404_error2.json",
                      width: 300),
                ),
              ),
              FadeAnimation(
                milliSecondsDuration: 500,
                translateEndValue: -10,
                translateStartValue: 10,
                child: MaterialButton(
                  color: Color(0xffffc800),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (c) => ErrorOne()));
                  },
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xffffc800))),
                  height: 50,
                  minWidth: double.infinity,
                  child: Text(
                    "GO Home",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
