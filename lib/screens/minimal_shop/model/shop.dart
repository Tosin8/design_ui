import 'package:flutter/cupertino.dart';
import 'package:ui_design/screens/minimal_shop/model/product.dart';

class Shop extends ChangeNotifier{
  // products for sale


final List<MinimalProduct> _shop = [

  MinimalProduct(
    name: 'Nike Air Max 270',
     description: 'This lifestyle sneaker features Nike\'s largest Air Max unit to date, providing unparalleled cushioning and shock absorption. The engineered mesh upper offers breathability and a modern look, while the exaggerated tongue adds a bold style element. The foam midsole and rubber outsole deliver lightweight comfort and traction.', 
     price: '14.4', 
     image: 'assets/minimal_shop/products/1.png'
     ), 

       MinimalProduct(
    name: 'Nike Air Zoom Pegasus',
     description: 'The Pegasus is a versatile and reliable running shoe that has been a staple in Nike\'s lineup for decades. It features responsive Zoom Air units in the forefoot for shock absorption and a React foam midsole for lightweight cushioning. The durable rubber outsole provides traction on various surfaces, while the engineered mesh upper offers breathability and a secure fit.', 
     price: '34.5', 
     image: 'assets/minimal_shop/products/2.png'
     ), 

       MinimalProduct(
    name: 'Nike Air Force 1 ',
     description: 'This iconic shoe has transcended the court and become a street style staple. The full-grain leather upper provides a premium look and feel, while perforations ensure breathability. The Air-Sole unit in the heel offers cushioning for all-day comfort, and the non-marking rubber outsole provides traction on various surfaces.', 
     price: '34.2', 
     image: 'assets/minimal_shop/products/3.png'
     ), 

       MinimalProduct(
    name: 'Nike Air VaporMax',
     description: 'The VaporMax revolutionized running shoes with its unique full-length Air Max unit that provides lightweight cushioning from heel to toe. The Flyknit upper hugs the foot for a snug, sock-like fit, while strategically placed reinforcements offer support. The rubber outsole with lugs provides traction on various surfaces.', 
     price: '12.0', 
     image: 'assets/minimal_shop/products/4.png'
     ), 

       MinimalProduct(
    name: 'Nike React Infinity',
     description: 'Designed for long-distance running, this shoe features Nike\'s responsive React foam for cushioning and a rocker geometry that promotes a smooth, efficient stride. The Flyknit upper offers a snug, breathable fit, while the reinforced heel and midfoot provide stability. The rubber outsole with a waffle pattern delivers durable traction on various surfaces.', 
     price: '51.0', 
     image: 'assets/minimal_shop/products/5.png'
     ), 
]; 

// User Cart 
List<MinimalProduct> _cart = []; 

// Get Product List 
List<MinimalProduct> get shop => _shop; 

// Get User Cart
List<MinimalProduct> get cart => _cart; 

// Add item to cart
void addToCart(MinimalProduct item) {
  _cart.add(item);
  notifyListeners(); 
}

// remove item from cart 
void removeFromCart(MinimalProduct item){
  _cart.remove(item); 
  notifyListeners(); 
}


}