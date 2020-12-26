import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  List cartList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Cart"),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              )
            ],
          ),
          InkWell(
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: (){


              
            },
          ),
        ]
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
                child: Text(
                  cartList.length.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            Container(
              height: 260,
              margin: EdgeInsetsDirectional.only(top: 12),
              color: Colors.grey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 12, right: 12),
                      width: 200,
                      height: 160,
                      child: Text(""),
                      color: Colors.grey,
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
                      onPressed: () {

                        setState(() {
                          cartList.add(index);
                          print(cartList);
                        });

                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}