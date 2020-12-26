import 'package:flutter/material.dart';



class CartPage extends StatefulWidget {

  CartPage({Key key, this.cartList}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}



class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.cartList.length.toString()),
      ),
    );
  }
}