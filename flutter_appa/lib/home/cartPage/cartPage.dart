import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appa/home/cartPage/body.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Cart Details"),
      ),
      body: Body(),
    );
  }
}
