import 'dart:developer' as developer;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  static const ROUTE_NAME = 'ProductDetailScreen';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  static const TAG = 'ProductDetailScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Color(0xffF2F3F2),
                          image: DecorationImage(
                            scale: 1.5,
                            image: AssetImage(
                                "lib/assets/images/ic_apple.png"),
                          ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Naturel Red Apple",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {})
                            ],
                          ),
                          Text(
                            "1kg, Price",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    // IconButton(
                                    //     icon: Icon(Icons.remove, size: 18,), onPressed: () {}),
                                    GestureDetector(
                                      child: Icon(
                                        Icons.remove,
                                        size: 18,
                                      ),
                                      onTap: () {},
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 35,
                                      height: 35,
                                      margin: EdgeInsets.only(left: 16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey, width: 1)),
                                      child: Text(
                                        "1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                    IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.green,
                                        ),
                                        onPressed: () {}),
                                  ],
                                ),
                                Text(
                                  "\$4.99",
                                  style: Theme.of(context).textTheme.headline6,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 80),
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.grey[300]!,
                            thickness: 1,
                          ),
                          ExpandablePanel(
                            header: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Product Detail",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            collapsed: Text(
                              "Let no one ever come to you without leaving better and happier. Be the living expression of kindness. Kindness in your face, kidness in your eyes, kidness in your smile",
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.grey[600]),
                            ),
                            expanded: Text(
                              "Let no one ever come to you without leaving better and happier. Be the living expression of kindness. Kindness in your face, kidness in your eyes, kidness in your smile",
                              softWrap: true,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.grey[600]),
                            ),
                          ),
                          Divider(
                            color: Colors.grey[300]!,
                            thickness: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nutritions",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(),
                                      padding: EdgeInsets.only(
                                          top: 3, bottom: 3, left: 5, right: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.grey[300],
                                      ),
                                      child: Text(
                                        "100g",
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    ),
                                  SizedBox(width: 10,),
                                    Icon(Icons.navigate_next_outlined),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey[300]!,
                            thickness: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Review",
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF3603F),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF3603F),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF3603F),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF3603F),
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF3603F),
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.navigate_next_outlined),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green),
                child: Text(
                  "Add to basket",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
