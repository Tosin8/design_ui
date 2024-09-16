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
  image: '', 
  route: ''), 
  Landing(
    title: 'McDonalds', 
  image: '', 
  route: ''), Landing(
    title: 'KFC', 
  image: '', 
  route: ''), Landing(
    title: 'SubWay', 
  image: '', 
  route: ''), Landing(
    title: 'Pizza Hut', 
  image: '', 
  route: ''), Landing(
    title: 'Dominion Pizza', 
  image: '', 
  route: ''), 
]; 