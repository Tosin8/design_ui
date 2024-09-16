class Menu {
  final String  title, image; 
  final double price; 
  Menu({required this.title, required this.image, required this.price});
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
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/2.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/3.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/4.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/5.jpg',
      price: 7.5),  

   ]
   
   ), 

   CategoryMenu(
    category: 'Burger',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/burger/1.jpg',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/burger/2.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/burger/3.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: 'assets/food/all/4.jpg',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
   
   CategoryMenu(
    category: 'Chicken',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'Dessert',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'Drink',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'Salad',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
   CategoryMenu(
    category: 'SandWish',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),CategoryMenu(
    category: 'Seafood',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),CategoryMenu(
    category: 'Soup',
  
   items: [
    Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
      Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),
       Menu(
      title: 'Cockie Sandwich',
     image: '',
      price: 7.5),  

   ]
   
   ),
]; 