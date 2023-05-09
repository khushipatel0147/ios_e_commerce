
import 'package:flutter/cupertino.dart';
import 'package:ios_e_commerce/provider/shopProvider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ShopProvider? providerF;
  ShopProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<ShopProvider>(context, listen: false);
    providerT = Provider.of<ShopProvider>(context, listen: true);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.white,
            border: Border.all(width: 0.0, style: BorderStyle.none),
            middle: Align(
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey5,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.search,
                      color: CupertinoColors.systemGrey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Bag",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: CupertinoColors.systemGrey,
                          fontSize: 15),
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: CupertinoColors.systemGrey,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            )),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: ListView.builder(
                itemBuilder: (context, index) => shopview(index),
                itemCount: providerF!.shop.length,
              ),
            )));
  }

  Widget shopview(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 70,width: 70,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: CupertinoColors.black,
                        blurRadius: 1,
                        spreadRadius: 3
                    )
                  ]
              ),
              child: Image.asset(
                "${providerF!.shop[index].imagepath}",
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${providerF!.shop[index].name}",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    color: CupertinoColors.black),
              ),
              SizedBox(height: 5),
              Text("\$${providerF!.shop[index].price}",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 15,
                      color: CupertinoColors.systemGrey)),
            ],
          ),
          Spacer(),
          Icon(CupertinoIcons.add_circled),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}