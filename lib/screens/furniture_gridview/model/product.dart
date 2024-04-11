// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String title; 
  final String image; 
  final int price;
  Product({
    required this.title,
    required this.image,
    required this.price,
  });
 
}

List<Product> products = [
Product(
  price: 1200,
  title: 'Product 1',
 image: 'assets/furniture_grid/1.jpg'
 ), 
 Product(
  title: 'Product 2',
 image: 'assets/furniture_grid/2.jpg', 
 price: 800
 ), 
 Product(
  title: 'Product 3',
 image: 'assets/furniture_grid/3.jpg', 
 price: 680
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/4.jpg', 
 price: 400
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/5.jpg', 
 price: 450
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/6.jpg', 
 price: 820
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/7.jpg', 
 price: 460
 ), Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/8.jpg', 
 price: 800
 ), 
]; 