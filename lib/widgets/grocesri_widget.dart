import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/utils/context_extension.dart';

class GrocesriWidget extends StatelessWidget {
  String url;
  String title;

  GrocesriWidget(this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      margin: EdgeInsets.only(right: 10, left: 5),
      decoration: BoxDecoration(
          color: Color(0xffF8A44C), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(url),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(title, style: context.textTheme.bodyText1),
          )
        ],
      ),
    );
  }
}
