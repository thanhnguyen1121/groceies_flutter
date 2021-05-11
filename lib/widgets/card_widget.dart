import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String url;
  final callBack;

  CardWidget(this.url, this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      margin: EdgeInsets.only(left: 6, right: 6),
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey[300]!,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 16.0, bottom: 16),
            child: Image.asset(
              url,
              height: 100,
            ),
          ),
          Text(
            "Originc Bananas",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "7pcs, Priceg",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$4.98",
                  style: Theme.of(context).textTheme.headline6,
                ),
                GestureDetector(
                  onTap: callBack,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
