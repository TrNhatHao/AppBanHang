import 'package:flutter_appa/sign_in/sign_in_page.dart';
import 'package:flutter_appa/widget/input_email_item_widget.dart';
import 'package:flutter_appa/widget/input_password_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputEmailWidget(
              hintText: "Email",
              icon: Icon(Icons.mail_outline),
              textInputType: TextInputType.text,
            ),
            InputPasswordWidget(
              hintText: "Password",
              icon: Icon(Icons.lock_outline_rounded),
              textInputType: TextInputType.visiblePassword,
            ),
            InputPasswordWidget(
              hintText: "Confirm",
              icon: Icon(Icons.check_circle_rounded),
              textInputType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.amber,
          child: Text(
            "Continue",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () async {
            final SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
            sharedPreferences.remove('email');
            Get.offAll(SignInPage());
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.amber,
          child: Text(
            "Sign Out",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/images/facebook_icon.png"),
            ),
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/images/google_icon.png"),
            ),
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/images/twitter_icon.png"),
            )
          ],
        ),
      ),
    ]));
  }
}
