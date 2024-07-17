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
    name: 'Mediterranean\nSunset Salad', 
    image: 'assets/grocery2/products/image_1.png', 
    description: 'A vibrant mix of crisp romaine lettuce, juicy cherry tomatoes, tangy feta cheese, Kalamata olives, and crisp cucumber slices. Topped with grilled chicken and drizzled with a zesty lemon-herb vinaigrette, this salad captures the essence of Mediterranean flavors in every bite.', 
    price: 15.00,
    weight: '420kcal'
    ),

     GroceryProduct(
    name: 'Autumn\nHarvest Bowl', 
    image: 'assets/grocery2/products/image_1.png', 
    description: 'A hearty blend of roasted butternut squash, crisp apple slices, and candied pecans atop a bed of baby spinach and kale. Tossed with dried cranberries and crumbled goat cheese, then finished with a warm maple-balsamic dressing that brings out the best of fall\'s bounty.', 
    price: 12.00,
    weight: '420kcal'
    ),

]; 