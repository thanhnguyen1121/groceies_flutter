import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:groceries_flutter_app/pages/account_page/account_page.dart';
import 'package:groceries_flutter_app/pages/cart_page/cart_page.dart';
import 'package:groceries_flutter_app/pages/explore_page/explore_page.dart';
import 'package:groceries_flutter_app/pages/favorite_page/favorite_page.dart';
import 'package:groceries_flutter_app/pages/shop_page/shop_page.dart';

class SelectPage extends StatefulWidget {
  static const ROUTE_NAME = 'SelectPage';

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  static const TAG = 'SelectPage';
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: PageView(
            controller: _pageController,
            children: [
              ShopPage(),
              ExplorePage(),
              CartPage(),
              FavoritePage(),
              AccountPage()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("lib/assets/images/ic_store.png" ),
              title: Text("Shop")),
          BottomNavigationBarItem(
              icon: Image.asset("lib/assets/images/ic_explore.png.png", color: Colors.red,),
              title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Image.asset("lib/assets/images/ic_cart.png.png"),
              title: Text("Cart")),
          BottomNavigationBarItem(
              icon: Image.asset("lib/assets/images/ic_favorite.png.png"),
              title: Text("Favorite")),
          BottomNavigationBarItem(
              icon: Image.asset("lib/assets/images/ic_user.png.png"),
              title: Text("AccountÒ")),
        ],
      ),
    );
  }
}
