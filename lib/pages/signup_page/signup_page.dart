import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static const ROUTE_NAME = 'SignupPage';

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  static const TAG = 'SignupPage';
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
                        "Sign Up",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Enter your credentials to continue",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26.0),
                        child: Text(
                          "Username",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
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
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Email",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
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
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Password",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
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
                            Icons.remove_red_eye,
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
                          margin: EdgeInsets.only(top: 12),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "By continuing you agree to our",
                                  style: Theme.of(context).textTheme.caption),
                              TextSpan(
                                  text: " Terms of Service",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(color: Colors.green)),
                              TextSpan(
                                  text: " and",
                                  style: Theme.of(context).textTheme.caption),
                              TextSpan(
                                  text: " Privacy Policy",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(color: Colors.green))
                            ]),
                          )),
                      GestureDetector(
                        onTap: () {

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
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                " Signin",
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
