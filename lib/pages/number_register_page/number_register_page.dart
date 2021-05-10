import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/enter_digit_code/enter_digit_code.dart';

class NumberRegisterPage extends StatefulWidget {
  static const ROUTE_NAME = 'NumberRegisterPage';

  @override
  _NumberRegisterPageState createState() => _NumberRegisterPageState();
}

class _NumberRegisterPageState extends State<NumberRegisterPage> {
  static const TAG = 'NumberRegisterPage';

  @override
  Widget build(BuildContext context) {
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
                            "Enter your mobile number",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("Mobile number"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "lib/assets/images/ic_flag.png",
                                  width: 30,
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "+880",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Expanded(
                                    child: TextField(
                                  cursorColor: Colors.black54,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                )),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnterDigitCodePage()));
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
