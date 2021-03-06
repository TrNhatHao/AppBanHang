import 'package:flutter/material.dart';
import 'package:flutter_appa/home/components/detail.dart';
import 'package:flutter_appa/models/products.dart';
import 'package:get/get.dart';

class PopularProductsWidget extends StatefulWidget {
  @override
  _PopularProductsWidgetState createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  final products = Products.init();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return productItem(index);
        },
      ),
    );
  }

  Widget productItem(int index) {
    return GestureDetector(
      onTap: () {
        Get.to(Detail(
          products: products[index],
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GridTile(
            footer: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    products[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Center(
                  child: Text(
                    "\$${products[index].price}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            child: Hero(
              tag: products[index].id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(products[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
