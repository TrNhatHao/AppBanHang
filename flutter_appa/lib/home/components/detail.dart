import 'package:flutter/material.dart';
import 'package:flutter_appa/home/addtocart.dart';
import 'package:flutter_appa/home/cartPage/cartPage.dart';
import 'package:flutter_appa/models/products.dart';
import 'package:get/get.dart';

class Detail extends StatelessWidget {
  Detail({Key key, this.products}) : super(key: key);
  final Products products;

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
              Image.asset(this.products.image),
              Text(" description:" + this.products.description),
              Text("Price: " + this.products.price.toString()),
              AddProductToCart(products)
            ],
          ),
        ),
      )),
    );
  }
}
