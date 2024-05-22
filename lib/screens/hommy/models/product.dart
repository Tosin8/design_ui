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
Product product = Product(
  id: "1", 
  price: 1200,
  title: "Wood Frame",
  image: "https://i.imgur.com/sI4GvE6.png",
  category: "Chair",
  subTitle: "Tieton Armchair",
  description: "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
); 

List <Product> recommendProducts = [
  Product(price: price, id: id, title: title, image: image, category: category, subTitle: subTitle, description: description)
]; 