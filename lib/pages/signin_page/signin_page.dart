import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/number_register_page/number_register_page.dart';

class SigninPage extends StatefulWidget {
  static const ROUTE_NAME = 'SigninPage';

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  static const TAG = 'SigninPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        "lib/assets/images/ic_bg_login.png",
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ))),
              Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 16.0, right: 16, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get your groceries\nwith nectar",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => NumberRegisterPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "lib/assets/images/ic_flag.png",
                                    width: 30,
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      "+880",
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyText2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Or connect with social media",
                              textAlign: TextAlign.center,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .caption,
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
                              EdgeInsets.only(left: 10, right: 10, top: 35),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff5383EC),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  Image.asset("lib/assets/images/ic_google.png",
                                      width: 24, height: 24),
                                  Text(
                                    "Continue with Google",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
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
                              EdgeInsets.only(left: 10, right: 10, top: 15),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xff4A66AC),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  Image.asset(
                                      "lib/assets/images/ic_facebook.png",
                                      width: 24, height: 24),
                                  Text(
                                    "Continue with Facebook",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
