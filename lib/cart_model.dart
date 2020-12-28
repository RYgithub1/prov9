import 'package:flutter/material.dart';



class CartModel extends ChangeNotifier {

  List cartList = [];


  void addToCart(int index) {
    cartList.add(index);
    notifyListeners();
  }

  void removeAtLastFromCart() {
    cartList.removeLast();
    notifyListeners();
  }


}