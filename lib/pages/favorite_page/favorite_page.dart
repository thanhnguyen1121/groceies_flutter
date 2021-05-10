import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  static const ROUTE_NAME = 'FavoritePage';

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  static const TAG = 'FavoritePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text("FavoritePage"),
    ));
  }
}
