import 'product_model.dart';

class Productitem {
  int quantity; 
  final Product? product; 
  Productitem({required this.quantity, required this.product});

  void increment() {
    quantity++;
  } 

  // void add () {} 

  // void subtract(){}
}