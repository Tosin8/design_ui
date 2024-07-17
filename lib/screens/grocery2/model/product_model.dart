class GroceryProduct{
  final String name;
  final String image;
  final String description;
  final double price;
  final String weight;

  GroceryProduct({required this.name, required this.image, required this.description, required this.price, required this.weight}); 
}

List <GroceryProduct> groceryproducts = [
  GroceryProduct(
    name: 'Orange', 
    image: 'assets/grocery/orange.png', 
    description: 'Fresh oranges', 
    price: 1.20,
    weight: '1kg'
    ),

]; 