class Product {
  final int price; 
  final String id; 
  final String title;
  final String image;
  final String category;
  final String subTitle;
  final String description;
  Product({required this.price, required this.id, required this.title, required this.image, required this.category, required this.subTitle, required this.description});

  // it create a category from JSON. 
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      price: json['price'],
      id: json['id'],
      title: json['title'],
      image: json['image'],
      category: json['category'],
      subTitle: json['subTitle'],
      description: json['description'],
    );
  }
}

// Demo Products