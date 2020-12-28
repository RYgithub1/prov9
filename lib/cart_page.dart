import 'package:flutter/material.dart';
import 'package:prov9/cart_model.dart';
import 'package:provider/provider.dart';



class CartPage extends StatefulWidget {
  // CartPage({Key key, this.cartList}) : super(key: key);   /// [Constructer]
  CartPage({Key key,}) : super(key: key);

  // final cartList = [];
  // final List cartList;   /// [field]
  @override
  _CartPageState createState() => _CartPageState();
}



class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CartModel>(
          builder: (context, val, child) =>  Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("---  Product Number in Cart  ---", style: TextStyle(fontSize: 20)),
              SizedBox(height: 16),
              // Text(widget.cartList.length.toString()),
              Text(val.cartList.length.toString()),
              FlatButton(
                child: Text("Remove product element"),
                // onPressed: () {
                //   widget.cartList.removeLast();
                //   /// [state反映したUI表示numberにするため追加]
                //   setState(() {});
                // },
                onPressed: () {
                  val.removeAtLastFromCart();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}