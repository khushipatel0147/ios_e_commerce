

import 'package:flutter/cupertino.dart';
import 'package:ios_e_commerce/view/cartScreen.dart';
import 'package:ios_e_commerce/view/dashScreen.dart';
import 'package:ios_e_commerce/view/searchScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: "Cart"),
          ]),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return index == 0
                ? DashScreen()
                : index == 1
                ? SearchScreen()
                : CartScreen();
          },
        );
      },
    );
  }
}
