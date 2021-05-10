import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  static const ROUTE_NAME = 'ShopPage';

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  static const TAG = 'ShopPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("Shop page"),
      ),
    );
  }
}
