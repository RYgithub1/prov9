import 'package:flutter/material.dart';
import 'package:prov9/cart_model.dart';
import 'package:prov9/cart_page.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  // List cartList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
        title: Text("Amazon Second Shop"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal:12),
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              margin: EdgeInsetsDirectional.only(top: 12),
              color: Colors.grey,
              child: Center(
                child: Consumer<CartModel>(
                  builder: (context, model, child) => Text(
                    "【SUPER SALE】\n\n   In your cart: ${model.cartList.length.toString()}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                // Text(
                //   cartList.length.toString(),
                //   style: TextStyle(fontSize: 20),
                // ),
              ),
            ),

            Container(
              height: 200,
              margin: EdgeInsetsDirectional.only(top: 12),
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, index) => Consumer<CartModel>(
                  builder: (context, model, child) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   // MaterialPageRoute(builder: (_) => CartPage(
                          //   //     cartList: model.cartList,
                          //   // )),
                          //   MaterialPageRoute(builder: (_) => CartPage()),
                          // );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 12, right: 12),
                          width: 160,
                          height: 100,
                          color: Colors.grey[400],
                          child: Center(child: Text("PRODUCT: ${(index+1).toString()}")),
                        ),
                      ),
                      Text(
                        "product name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        // onPressed: () {
                        //   setState(() {
                        //     model.hashCode.add(index);
                        //     print(model.cartList);
                        //   });
                        // },
                        onPressed: () {
                          model..addToCart(index);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}