import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  static const ROUTE_NAME = 'ExplorePage';

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static const TAG = 'ExplorePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text("Explore_page"),
    ));
  }
}
