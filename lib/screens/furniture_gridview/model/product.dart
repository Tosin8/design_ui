// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String title; 
  final String image; 
  final int price;
  final String description;

  Product({required this.title, required this.image, required this.price, required this.description}); 
 
 
}

List<Product> products = [
Product(
  
  price: 1200,
  title: 'Nova Nordic Dining Chair',
 image: 'assets/furniture_grid/1.jpg', 
 description: 'This chair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.',
 ), 
 Product(
  title: 'Product 2',
 image: 'assets/furniture_grid/2.jpg', 
 price: 800, 
 description: ''
 ), 
 Product(
  title: 'Product 3',
 image: 'assets/furniture_grid/3.jpg', 
 price: 680, description: ''
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/4.jpg', 
 price: 400, description: ''
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/5.jpg', 
 price: 450, description: ''
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/6.jpg', 
 price: 820, description: ''
 ), 
 Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/7.jpg', 
 price: 460, description: ''
 ), Product(
  title: 'Product 1',
 image: 'assets/furniture_grid/8.jpg', 
 price: 800, description: ''
 ), 
]; 