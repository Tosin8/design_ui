class Category {
  final String title; 
  final String image;

  Category({required this.title, required this.image}); 
}

final categories = [
  Category(title: 'Beaf', image: 'assets/grocery/category/beef.jpg'),
  Category(title: 'Bakery', image: 'assets/grocery/category/bread.jpg'),
  Category(title: 'Coffee & Tea', image: 'assets/grocery/category/coffee.jpg'),
  Category(title: 'Dairy & Eggs', image: 'assets/grocery/category/egg.jpg'),
  Category(title: 'Juice & Drinks', image: 'assets/grocery/category/juice.jpg'),
  Category(title: 'Fruits & Veggies', image: 'assets/grocery/category/veggie.jpg'),
]; 