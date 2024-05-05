import 'package:ui_design/screens/coffee_shop/model/coffee.dart';

class CoffeeShop {

// coffee for sale list 
final List<Coffee> _shop = [

  Coffee(
    'Long Black', 
    '5.2',
     'assets/coffee_shop/products/png/1.png',
      '150ml',
       '4.3',
        'The perfect has more intense....'), 

        Coffee(
    'Long Black', 
    '5.2',
     'assets/coffee_shop/products/png/2.png',
      '150ml',
       '4.3',
        'The perfect has more intense....'), 

        Coffee(
    'Long Black', 
    '5.2',
     'assets/coffee_shop/products/png/3.png',
      '150ml',
       '4.3',
        'The perfect has more intense....'), 

        Coffee(
    'Long Black', 
    '5.2',
     'assets/coffee_shop/products/png/4.png',
      '150ml',
       '4.3',
        'The perfect has more intense....'), 

        Coffee(
    'Long Black', 
    '5.2',
     'assets/coffee_shop/products/png/5.png',
      '150ml',
       '4.3',
        'The perfect has more intense....'), 
]; 

// user cart
List<Coffee> _userCart =  []; 

// get coffee list
List<Coffee> get coffeeShop => _shop; 

// get user cart
List<Coffee> get userCart => _userCart; 


// add item to cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  }

// remove item from cart. 
void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  }
}

