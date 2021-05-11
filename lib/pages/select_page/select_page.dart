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

class _SelectPageState extends State<SelectPage>
    with AutomaticKeepAliveClientMixin {
  static const TAG = 'SelectPage';
  final _pageController = PageController();
  int curentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Colors.black,
        currentIndex: curentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            curentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/ic_store.png",
                color: curentIndex == 0 ? Color(0xff53B175) : Colors.black,
              ),
              title: Text(
                "Shop",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color:
                          curentIndex == 0 ? Color(0xff53B175) : Colors.black,
                    ),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/ic_explore.png",
                color: curentIndex == 1 ? Color(0xff53B175) : Colors.black,
              ),
              title: Text(
                "Explore",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color:
                          curentIndex == 1 ? Color(0xff53B175) : Colors.black,
                    ),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/ic_cart.png",
                color: curentIndex == 2 ? Color(0xff53B175) : Colors.black,
              ),
              title: Text(
                "Cart",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color:
                          curentIndex == 2 ? Color(0xff53B175) : Colors.black,
                    ),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/ic_favorite.png",
                color: curentIndex == 3 ? Color(0xff53B175) : Colors.black,
              ),
              title: Text(
                "Favorite",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color:
                          curentIndex == 3 ? Color(0xff53B175) : Colors.black,
                    ),
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "lib/assets/images/ic_user.png",
                color: curentIndex == 4 ? Color(0xff53B175) : Colors.black,
              ),
              title: Text(
                "Account",
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color:
                          curentIndex == 4 ? Color(0xff53B175) : Colors.black,
                    ),
              )),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
