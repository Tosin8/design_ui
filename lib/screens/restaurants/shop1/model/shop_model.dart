class Menu {
  final String  title, image; 
  final double price; 
  final String description; 
  Menu( {required this.title, required this.image, required this.price, required this.description});
}

class CategoryMenu {
  final String category; 
  final List<Menu> items; 
  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoriesMenus = [
  CategoryMenu(
    category: 'Most Popular',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/1.jpg',
     description: '', 
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/2.jpg',
      description: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/3.jpg',
      description: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/4.jpg',
      description: '',
      

      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
       description: '',
     image: 'assets/food/all/5.jpg',
      price: 7.5),  

   ]
   
   ), 

   CategoryMenu(
    category: 'Burger',
  
   items: [
    Menu(
       description: 'A juicy beef patty topped with lettuce, tomato, cheese, and your favorite condiments on a toasted bun.',
      title: 'Classic Beef Burger',
     image: 'assets/food/burger/1.jpg',
      price: 10.6),
      Menu(
         description: 'A double beef patty layered with melted cheddar cheese, crispy bacon, and pickles for an indulgent bite.',
      title: 'Cheese Burger Deluxe',
     image: 'assets/food/burger/2.jpg',
      price: 4.5),
       Menu(
         description: 'A crispy or grilled chicken patty with lettuce, tomato, and mayo, perfect for a lighter burger option.',
      title: 'Chicken Burger',
     image: 'assets/food/burger/3.jpg',
      price: 17.5),
       Menu(
         description: 'A hearty patty made from vegetables and beans, topped with avocado, lettuce, and a tangy sauce on a whole wheat bun.',
      title: 'Veggie Burger',
     image: 'assets/food/burger/4.jpg',
      price: 12.6),
       Menu(
         description: 'A beef patty topped with crispy bacon, smoky BBQ sauce, and fried onion rings for a bold flavor experience.',
      title: 'Bacon BBQ Burger',
     image: 'assets/food/burger/5.jpg',
      price: 7.5),  

   ]
   
   ),
   
   CategoryMenu(
    category: 'Chicken',
  
   items: [
    Menu(
      title: 'Grilled Chicken Breast',
       description: 'A tender and juicy chicken breast marinated in herbs and spices, grilled to perfection for a healthy, flavorful meal.',
     image: 'assets/food/chicken/1.jpg',
      price: 7.5),
      Menu(
      title: 'Fried Chicken Wings',
       description: 'Crispy and golden on the outside, tender and juicy on the inside. Perfectly seasoned and fried to satisfy any craving.',
     image: 'assets/food/chicken/2.jpg',
      price: 7.5),
       Menu(
      title: 'Chicken Parmesan',
       description: 'Breaded and fried chicken breast topped with marinara sauce and melted mozzarella, served with a side of pasta',
     image: 'assets/food/chicken/3.jpg',
      price: 7.5),
       Menu(
         description: 'Strips of chicken lightly breaded and fried, served with your choice of dipping sauces.',
      title: 'Chicken Tenders',
     image: 'assets/food/chicken/4.jpg',
      price: 7.5),
       Menu(
         description: 'A creamy, spiced curry featuring tender chunks of chicken simmered in a rich, buttery tomato sauce.',
      title: 'Butter Chicken',
     image: 'assets/food/chicken/5.jpg',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'Dessert',
  
   items: [
    Menu(
       description: 'A warm, rich chocolate cake with a gooey melted center, served with a scoop of vanilla ice cream.',
      title: 'Chocolate Lava Cake',
     image: 'assets/food/desserts/1.jpg',
      price: 7.5),
      Menu(
         description: 'Layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder, creating a rich and indulgent Italian dessert.',
      title: 'Tiramisu',
     image: 'assets/food/desserts/2.jpg',
      price: 10.5),
       Menu(
         description: ' A traditional dessert with a flaky crust, filled with spiced apples and baked to golden perfection.',
      title: 'Apple Pie',
     image: 'assets/food/desserts/3.jpg',
      price: 12.5),
         

   ]
   
   ),
   CategoryMenu(
    category: 'Drink',
  
   items: [
    Menu(
      title: 'Fresh Lemonade',
     image: 'assets/food/drink/1.jpg',
      description: 'A refreshing mix of freshly squeezed lemons, sugar, and water served over ice.',
      price: 10.5),
      Menu(
      title: 'Iced Latte',
     image: 'assets/food/drink/2.jpg',
      description: 'Cold espresso poured over ice, mixed with milk and a choice of flavors like vanilla or caramel.',
      price: 17.5),
       Menu(
      title: 'Berry Smoothie',
       description: 'A blended drink made from fresh berries, yogurt, and honey, perfect for a healthy treat.',
     image: 'assets/food/drink/3.jpg',
      price: 12.5),
         

   ]
   
   ),
   CategoryMenu(
    category: 'Salad',
  
   items: [
    Menu(
      title: 'Caesar Salad',
       description: 'Crisp romaine lettuce tossed with Caesar dressing, croutons, and parmesan cheese, topped with grilled chicken',
     image: 'assets/food/salad/1.jpg',
      price: 15.3),
      Menu(
      title: 'Greek Salad',
       description: 'A Mediterranean classic with tomatoes, cucumbers, olives, red onions, and feta cheese, dressed in olive oil and lemon.',
     image: 'assets/food/salad/2.jpg',
      price: 6.2),
       Menu(
      title: 'Cobb Salad',
       description: 'A hearty salad featuring mixed greens, grilled chicken, avocado, bacon, hard-boiled eggs, and blue cheese.',
     image: 'assets/food/salad/3.jpg',
      price: 7.5),
       Menu(
      title: 'Caprese Salad',
       description: 'Fresh slices of mozzarella, tomatoes, and basil, drizzled with balsamic glaze and olive oil.',
     image: 'assets/food/salad/4.jpg',
      price: 9.5),
       Menu(
      title: 'Kale & Quinoa Salad',
       description: 'A healthy blend of kale, quinoa, almonds, and dried cranberries, tossed in a light lemon vinaigrette.',
     image: 'assets/food/salad/5.jpg',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'SandWish',
   items: [
    Menu(
      title: 'Turkey Club Sandwich',
       description: 'Stacked high with sliced turkey, crispy bacon, lettuce, tomato, and mayo, served on toasted bread.',
     image: 'assets/food/sandwish/1.jpg',
      price: 7.0),
      Menu(
      title: 'Grilled Cheese Sandwich',
       description: 'A comforting sandwich with melted cheddar and mozzarella between two slices of buttery, toasted bread.',
     image: 'assets/food/sandwish/2.jpg',
      price: 17.5),
       Menu(
      title: 'Chicken Caesar Sandwich',
       description: 'Grilled chicken breast, romaine lettuce, parmesan cheese, and Caesar dressing, all packed between crusty ciabatta bread.',
     image: 'assets/food/sandwish/3.jpg',
      price: 9.0),
       

   ]
   
   ),CategoryMenu(
    category: 'Seafood',
   items: [
    Menu(
      title: 'Grilled Salmon',
       description: 'Fresh salmon fillet grilled and served with a lemon butter sauce, perfect for a light, healthy meal.',
     image: 'assets/food/seafood/1.jpg',
      price: 9.5),
      Menu(
      title: 'Shrimp Scampi',
       description: 'Juicy shrimp sautéed in garlic, butter, and white wine sauce, served over a bed of linguine.',
     image: 'assets/food/seafood/2.jpg',
      price: 7.5),
        

   ]
   
   ),
   CategoryMenu(
    category: 'Soup',
  
   items: [
    Menu(
      title: 'Tomato Basil Soup',
       description: 'A creamy blend of ripe tomatoes and fresh basil, served with a side of toasted bread.',
     image: 'assets/food/soup/1.jpg',
      price: 17.5),
      Menu(
      title: 'Chicken Noodle Soup',
       description: 'Comforting soup with tender chicken, noodles, and vegetables in a flavorful broth.',
     image: 'assets/food/soup/2.jpg',
      price: 13.5),
       Menu(
      title: 'Clam Chowder',
       description: 'A creamy, hearty soup filled with tender clams, potatoes, and bacon, offering a rich and savory flavor.',
     image: 'assets/food/soup/3.jpg',
      price: 7.5),
       Menu(
      title: 'Minestrone Soup',
       description: 'A hearty Italian soup with vegetables, beans, and pasta in a rich tomato broth.',
     image: 'assets/food/soup/4.jpg',
      price: 8.2),
       Menu(
      title: 'Butternut Squash Soup',
       description: 'A velvety smooth soup made from roasted butternut squash, with a hint of nutmeg and cream.',
     image: 'assets/food/soup/5.jpg',
      price: 7.5),  

   ]
   
   ),
]; 