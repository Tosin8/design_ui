import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../model/productitem.dart';

enum VeggieState { normal, cart }

class VeggieController extends ChangeNotifier {
  VeggieState veggieState = VeggieState.normal;

  
  List<ProductItem> cart = [];

  void changeVeggieState(VeggieState state) {
    veggieState = state;
    notifyListeners();
  }

  void addProductToCart(Product product) {
    for (ProductItem item in cart) {
      if (item.product!.title == product.title) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product));
    notifyListeners();
  }

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}