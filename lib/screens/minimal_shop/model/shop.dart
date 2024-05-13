import 'package:ui_design/screens/minimal_shop/model/product.dart';

class Shop{
  // products for sale


final List<MinimalProduct> _shop = [

  MinimalProduct(
    name: 'Shoe 1',
     description: '', 
     price: '14.4', 
     image: 'assets/minimal_shop/products/1.png'
     ), 

       MinimalProduct(
    name: 'Shoe 2',
     description: '', 
     price: '34.5', 
     image: 'assets/minimal_shop/products/2.png'
     ), 

       MinimalProduct(
    name: 'Shoe 3',
     description: '', 
     price: '34.2', 
     image: 'assets/minimal_shop/products/3.png'
     ), 

       MinimalProduct(
    name: 'Shoe 4',
     description: '', 
     price: '12.0', 
     image: 'assets/minimal_shop/products/4.png'
     ), 

       MinimalProduct(
    name: 'Shoe 5',
     description: '', 
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
}

// remove item from cart 
void removeFromCart(MinimalProduct item){
  _cart.remove(item); 
}


}