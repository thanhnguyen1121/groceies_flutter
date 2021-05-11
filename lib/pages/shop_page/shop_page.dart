import 'dart:developer' as developer;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/product_detail_screen/product_detail_screen.dart';
import 'package:groceries_flutter_app/widgets/card_widget.dart';
import 'package:groceries_flutter_app/utils/context_extension.dart';
import 'package:groceries_flutter_app/widgets/grocesri_widget.dart';

class ShopPage extends StatefulWidget {
  static const ROUTE_NAME = 'ShopPage';

  @override
  _ShopPageState createState() => _ShopPageState();
}

final List<String> imgList = [
  "lib/assets/images/ic_banner.png",
  "lib/assets/images/ic_banner.png",
  "lib/assets/images/ic_banner.png",
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(
                  item,
                  fit: BoxFit.fill,
                  width: 1000,
                )),
          ),
        ))
    .toList();

class _ShopPageState extends State<ShopPage> with AutomaticKeepAliveClientMixin {
  static const TAG = 'ShopPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset("lib/assets/images/ic_carrot_orange.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.place_rounded),
                    Text(
                      "Hanoi, VietNam",
                      style: context.textTheme.bodyText2,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 10, right: 10, top: 0, bottom: 0),
                      filled: true,
                      fillColor: Color(0xffE5E5E5),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Store",
                      hintStyle: Theme.of(context).textTheme.caption,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.5,
                      onPageChanged: (index, reason) {}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CardWidget("lib/assets/images/ic_banana.png", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailScreen()));
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CardWidget("lib/assets/images/ic_apple.png", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailScreen()));
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Groceries",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GrocesriWidget("lib/assets/images/ic_pulses.png", "Pulses"),
                    GrocesriWidget("lib/assets/images/ic_rices.png", "Rices"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CardWidget("lib/assets/images/ic_beef.png", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailScreen()));
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
