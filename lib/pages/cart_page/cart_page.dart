import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  static const ROUTE_NAME = 'CartPage';

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  static const TAG = 'CartPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text("CartPage"),
    ));
  }
}
