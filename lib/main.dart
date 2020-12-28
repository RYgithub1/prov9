import 'package:flutter/material.dart';
import 'package:prov9/cart_model.dart';
import 'package:prov9/home_page.dart';
import 'package:provider/provider.dart';


void main() {runApp(MyApp());}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<CartModel>(
      // create: (context) => CartModel(),
      create: (_) => CartModel(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CMS Cart',
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      ),
    );
  }
}
