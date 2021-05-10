import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/signup_page/signup_page.dart';

class LoginPage extends StatefulWidget {
  static const ROUTE_NAME = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const TAG = 'LoginPage';
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                "lib/assets/images/ic_bg_verify.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 150,
                          child: Image.asset(
                            "lib/assets/images/ic_carrot_orange.png",
                          )),
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Enter your emails and password",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Text(
                          "Email",
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Text(
                          "Password",
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextField(
                        obscureText: isShowPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye_sharp,
                            color: !isShowPassword ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isShowPassword = !isShowPassword;
                            });
                          },
                        )),
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          "Forgot password?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SigninPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 35),
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "Login",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                " Signup",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
