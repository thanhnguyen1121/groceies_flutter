import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  static const ROUTE_NAME = 'AccountPage';

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  static const TAG = 'AccountPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text("AccountPage"),
    ));
  }
}
