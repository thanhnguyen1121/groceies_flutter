import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/select_page/select_page.dart';
import 'package:groceries_flutter_app/pages/splash/splash_page.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(

        )
      ),
      home: SelectPage(),
      // home: SplashPage(),
    );
  }
}
