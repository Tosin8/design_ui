class Landing {
  final String title; 
  final String image; 
  // navigation
  final String route;
  Landing({required this.title, required this.image, required this.route});
}

final List<Landing> demoLandings = [
  Landing(
    title: 'Burger King', 
  image: 'assets/food/brand_company/burger_king.png', 
  route: ''), 
  Landing(
    title: 'McDonalds', 
  image: 'assets/food/brand_company/mcdonalds.jpg', 
  route: ''),
   Landing(
    title: 'KFC', 
  image: 'assets/food/brand_company/kfc.jpg', 
  route: ''),
   Landing(
    title: 'SubWay', 
  image: 'assets/food/brand_company/subway.png', 
  route: ''), 
  Landing(
    title: 'Pizza Hut', 
  image: 'assets/food/brand_company/pizza_hunt.png', 
  route: ''),
   Landing(
    title: 'Dominion Pizza', 
  image: 'assets/food/brand_company/dominion.png', 
  route: ''), 
]; 