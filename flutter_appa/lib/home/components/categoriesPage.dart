import 'package:flutter/material.dart';
import 'package:flutter_appa/home/cartPage/cartPage.dart';
import 'package:get/get.dart';
import 'package:flutter_appa/models/categories.dart';

class CatagoriesPage extends StatelessWidget {
  CatagoriesPage({Key key, this.catagories}) : super(key: key);
  final Categories catagories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.amber,
        title: Text("Hao"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          GestureDetector(
            onTap: () {
              Get.to(CartPage());
            },
            child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
                child: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
      body: (Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Image.asset(this.catagories.image),
              Text("id" + this.catagories.id.toString())
            ],
          ),
        ),
      )),
    );
  }
}
