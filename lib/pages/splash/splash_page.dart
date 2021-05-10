import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/onbroding_page/onbroding_page.dart';

class SplashPage extends StatefulWidget {
  static const ROUTE_NAME = 'SplashPage';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const TAG = 'SplashPage';
  double height = 0;
  bool isClick = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      setState(() {
        isClick = !isClick;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Color(0xff53B175)),
        width: double.infinity,
        height: double.infinity,
        child: AnimatedContainer(
          height: !isClick ? 0 : 150,
          duration: Duration(seconds: 3),
          padding: EdgeInsets.all(30),
          child: Image.asset("lib/assets/images/ic_logo.png"),
          curve: Curves.fastOutSlowIn,
          onEnd: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnbrodingPage()));
          },
        ),
      ),
    );
  }
}
