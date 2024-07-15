import 'product_model.dart';

class Productitem {
  int quantity; 
  final Product? product; 
  Productitem({this.quantity = 1 , required this.product});

  void increment() {
    quantity++;
  } 

  // void add () {} 

  // void subtract()
}