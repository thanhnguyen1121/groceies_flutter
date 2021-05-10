import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/login_page/login_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterDigitCodePage extends StatefulWidget {
  static const ROUTE_NAME = 'NumberRegisterPage';

  @override
  _EnterDigitCodePageState createState() => _EnterDigitCodePageState();
}

class _EnterDigitCodePageState extends State<EnterDigitCodePage> {
  static const TAG = 'NumberRegisterPage';

  @override
  Widget build(BuildContext context) {
    final StreamController<ErrorAnimationType> errorController =
        StreamController<ErrorAnimationType>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "lib/assets/images/ic_bg_verify.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding:
                          const EdgeInsets.only(left: 16.0, right: 16, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enter your 4-digit code",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("code"),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 8, left: 50, right: 50),
                            child: PinCodeTextField(
                              length: 4,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              animationDuration: Duration(milliseconds: 300),
                              errorAnimationController: errorController,
                              // Pass it here
                              onChanged: (value) {
                                setState(() {});
                              },
                              appContext: context,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 30),
                    child: Text(
                      "Resent code",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.green),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.navigate_next_outlined,
          size: 32,
        ),
      ),
    );
  }
}
