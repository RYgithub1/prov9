import 'package:flutter/material.dart';



class CartPage extends StatefulWidget {

  CartPage({Key key, this.cartList}) : super(key: key);   /// [Constructer]
  // final cartList = [];
  final List cartList = [];   /// [field]

  @override
  _CartPageState createState() => _CartPageState();
}



class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(widget.cartList.length.toString()),
            FlatButton(
              child: Text(
                "Delete the element"
                style: TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}