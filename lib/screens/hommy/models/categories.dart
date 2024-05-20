class Category {
  final String id, title, image; 
  final int numOfProducts; 


  Category({required this.id, required this.title, required this.image, required this.numOfProducts});

  // Creating category from JSON. 
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      numOfProducts: json['numOfProducts'],
    );
  }
}

// List of categories
// List<Category> categories = [
//   Category(
//     id: "1",
//     title: "Chair",
//     image: "https://i.imgur.com/sI4GvE6.png",
//     numOfProducts: 100,
//   ),
//   Category(
//     id: "2",
//     title: "Sofa",
//     image: "https://i.imgur.com/sI4GvE6.png",
//     numOfProducts: 100,
//   ),
//   Category(
//     id: "3",
//     title: "Table",
//     image: "https://i.imgur.com/sI4GvE6.png",
//     numOfProducts: 100,
//   ),

// category
Category category = Category(id: '1',
 title: 'Arm Chair', 
 image: '',
  numOfProducts: 100
  ); 