class Product {
  final String title; 
  final String image;

  Product({required this.title, required this.image}); 
}

List<Product> _products = [
  Product(title: 'Apple', image: 'assets/grocery/1.jpg'),
  Product(title: 'Banana', image: 'assets/grocery/2.jpg'),
  Product(title: 'Orange', image: 'assets/grocery/3.jpg'),
]; 