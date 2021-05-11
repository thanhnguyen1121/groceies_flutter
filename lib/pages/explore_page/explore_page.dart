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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Find Products", style: Theme.of(context).textTheme.headline6,),
        centerTitle:true,
      ),
      body: SafeArea(
          child: Container(
        child: Text("Explore_page"),
      )),
    );
  }
}
