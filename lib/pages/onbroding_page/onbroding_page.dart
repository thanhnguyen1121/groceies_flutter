import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/signin_page/signin_page.dart';

class OnbrodingPage extends StatefulWidget {
  static const ROUTE_NAME = 'OnbrodingPage';

  @override
  _OnbrodingPageState createState() => _OnbrodingPageState();
}

class _OnbrodingPageState extends State<OnbrodingPage> {
  static const TAG = 'OnbrodingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                "lib/assets/images/ic_bg_onbroding.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "lib/assets/images/ic_carot.png",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Text(
                              "Welcome\nto our store",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Get your groceries in as fast as one hour",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SigninPage()));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: 25, right: 25, top: 35),
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xff53B175),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  "Get Started",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
