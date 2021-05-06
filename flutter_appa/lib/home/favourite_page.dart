import 'package:flutter/material.dart';
import 'package:flutter_appa/home/components/productbox.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: <Widget>[
        ProductBox(
            name: "GongCha",
            description: "sadsa",
            price: 2000,
            image: "assets/images/product_gongcha.jpg"),
        ProductBox(
            name: "GongCha2",
            description: "dfdsad",
            price: 1500,
            image: "assets/images/product_gongcha.jpg"),
        ProductBox(
            name: "GongCha3",
            description: "dsad",
            price: 100,
            image: "assets/images/product_gongcha.jpg"),
        ProductBox(
            name: "GongCha4",
            description: "faf",
            price: 20,
            image: "assets/images/product_gongcha.jpg"),
      ],
    );
  }
}
