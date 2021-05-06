import 'package:flutter_appa/home/account_page.dart';
import 'package:flutter_appa/home/cartPage/cartPage.dart';
import 'package:flutter_appa/home/favourite_page.dart';
import 'package:flutter_appa/home/notification_page.dart';
import 'package:flutter_appa/widget/tab_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appa/home/home_page.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
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
        body: TabBarView(
          children: [
            HomePage(),
            FavouritePage(),
            NotificationPage(),
            AccountPage(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              TabItemWidget(
                icon: Icons.home,
                name: "Home",
              ),
              TabItemWidget(
                icon: Icons.linked_camera,
                name: "Favourite",
              ),
              TabItemWidget(
                icon: Icons.notification_important,
                name: "Notification",
              ),
              TabItemWidget(
                icon: Icons.face,
                name: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
