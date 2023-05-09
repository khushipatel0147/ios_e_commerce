import 'package:flutter/material.dart';
import 'package:ios_e_commerce/model/shopModel.dart';

class ShopProvider extends ChangeNotifier
{
  
  List<ShopModel> shop =[
    ShopModel(name: "Black Satchel Bag",imagepath: "assets/image/1.jpg",price: 12999),
    ShopModel(name: "Women Shoulder Bags",imagepath: "assets/image/2.jpg",price: 6312),
    ShopModel(name: "Leather Office Bag",imagepath: "assets/image/3.jpg",price: 1699),
    ShopModel(name: "Women's Handbag",imagepath: "assets/image/4.jpg",price: 1999),
    ShopModel(name: "Women's Beech Bag",imagepath: "assets/image/5.jpg",price: 1109),
    ShopModel(name: "Baggit Satchel Handbag ",imagepath: "assets/image/6.jpg",price: 1422),
    ShopModel(name: "Lino Perros Handbag",imagepath: "assets/image/7.jpg",price: 1339),
    ShopModel(name: "EXOTIC Hand bag",imagepath: "assets/image/8.jpg",price: 1249),
    ShopModel(name: "Caprese Satchel",imagepath: "assets/image/9.jpg",price: 1399),
    ShopModel(name: "BELLISSA Handbag",imagepath: "assets/image/10.jpg",price: 1399),
  ];
}