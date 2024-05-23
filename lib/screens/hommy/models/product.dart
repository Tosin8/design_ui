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
// Product product = Product(
//   id: "1", 
//   price: 1200,
//   title: "Wood Frame",
//   image: "https://i.imgur.com/sI4GvE6.png",
//   category: "Chair",
//   subTitle: "Tieton Armchair",
//   description: "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
// ); 

List <Product> recommendProducts = [
  Product(
    price: 700, 
    id: "2", 
    title:
     'White Sofa', 
     image: "assets/furniture_grid/1.jpg", 
     category: "Accent Chairs", 
     subTitle: "",
      description: "Here is a short product description for a furniture chair . Elevate your living space with the timeless elegance of our Vintage Leather Accent Chair. Meticulously handcrafted with top-grain leather upholstery, this chair exudes a warm, inviting appeal. The button-tufted backrest and rolled arms offer exceptional comfort, while the sturdy kiln-dried hardwood frame ensures lasting durability. "
      ), 

       Product(
    price: 1000, 
    id: "2", 
    title:
     'Brown Sofa', 
     image: "assets/furniture_grid/2.jpg", 
     category: "Lounge Chairs", 
     subTitle: "",
      description: "With its rich caramel hue and distressed finish, this chair seamlessly blends vintage charm with modern sophistication, making it a stunning addition to any room. Bring sophisticated style and unparalleled relaxation into your home with this exquisite chair."
      ), 
      
       Product(
    price: 1200, 
    id: "2", 
    title:
     'Dark Grey ', 
     image: "assets/furniture_grid/3.jpg", 
     category: "Dinning Chairs", 
     subTitle: "",
      description: "Here is a short product description for a furniture chair . Elevate your living space with the timeless elegance of our Vintage Leather Accent Chair. Meticulously handcrafted with top-grain leather upholstery, this chair exudes a warm, inviting appeal. The button-tufted backrest and rolled arms offer exceptional comfort, while the sturdy kiln-dried hardwood frame ensures lasting durability. "
      ), 
      
       Product(
    price: 700, 
    id: "2", 
    title:
     'Office Sofa', 
     image: "assets/furniture_grid/5.jpg", 
     category: "Office Chairs", 
     subTitle: "",
      description: "Here is a short product description for a furniture chair . Elevate your living space with the timeless elegance of our Vintage Leather Accent Chair. Meticulously handcrafted with top-grain leather upholstery, this chair exudes a warm, inviting appeal. The button-tufted backrest and rolled arms offer exceptional comfort, while the sturdy kiln-dried hardwood frame ensures lasting durability. "
      ),
      
        Product(
    price: 700, 
    id: "2", 
    title:
     'Sofa Stool', 
     image: "assets/furniture_grid/7.jpg", 
     category: "Bar stools", 
     subTitle: "",
      description: "Here is a short product description for a furniture chair . Elevate your living space with the timeless elegance of our Vintage Leather Accent Chair. Meticulously handcrafted with top-grain leather upholstery, this chair exudes a warm, inviting appeal. The button-tufted backrest and rolled arms offer exceptional comfort, while the sturdy kiln-dried hardwood frame ensures lasting durability. "
      ), 
]; 