import 'package:flutter/material.dart';
import 'package:flutter_appa/home/components/detail.dart';
import 'package:flutter_appa/models/products.dart';
import 'package:get/get.dart';

class ProductsPage extends StatefulWidget {
  final String title;
  final int categoryId;
  final List<Products> products;

  ProductsPage({Key key, this.title, this.products, this.categoryId})
      : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<Products> list = [];

  @override
  Widget build(BuildContext context) {
    widget.products.forEach((e) {
      if (e.idcate == widget.categoryId) {
        list.add(e);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return buildProducts(index);
            },
          ),
        ),
      ),
    );
  }

  Widget buildProducts(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
        child: GestureDetector(
          onTap: () {
            Get.to(Detail(
              products: list[index],
            ));
          },
          child: GridTile(
            footer: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    list[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  "\$${list[index].price}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            child: Hero(
              tag: list[index].id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(list[index].image),
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
