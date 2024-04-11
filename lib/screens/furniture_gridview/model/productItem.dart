

import '../../furniture_app/model/product.dart';

class ProductItem {
  int quantity; 
  final Product? product; 

  ProductItem({this.quantity = 1, this.product});

  void increment() {
    quantity++; 
  }
}