import 'package:flutter/material.dart';
import 'pages/shop_items.dart';
import 'pages/checkout.dart';
import 'bloc/cart_items_block.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(255, 144, 0, .1),
      100: Color.fromRGBO(255, 144, 0, .2),
      200: Color.fromRGBO(255, 144, 0, .3),
      300: Color.fromRGBO(255, 144, 0, .4),
      400: Color.fromRGBO(255, 144, 0, .5),
      500: Color.fromRGBO(255, 144, 0, .6),
      600: Color.fromRGBO(255, 144, 0, .7),
      700: Color.fromRGBO(255, 144, 0, .8),
      800: Color.fromRGBO(255, 144, 0, .9),
      900: Color.fromRGBO(255, 144, 0, 1),
    };
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFFF7000, color),
      ),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => ShopItems(),
        "/checkout": (BuildContext context) => Checkout()
      },
    );
  }
}
