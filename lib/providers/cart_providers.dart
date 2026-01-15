
import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class CartItem{
  final Product product;
  int quantity;

  CartItem({required this.product, this. quantity = 1});
}

class CartProviders with ChangeNotifier{

  final Map<String, CartItem> _cartItems = {};
  Map<String, CartItem> get cartItem => _cartItems;

  void addToCart(Product product){
  if (_cartItems.containsKey(product.id)){
  _cartItems[product.id]! .quantity ++;
  }else{
    _cartItems[product.id] = CartItem(product: product); 
  }
  notifyListeners();
}
 void removeFromCart (String id) {
  _cartItems.remove(id);
  notifyListeners();
}
}