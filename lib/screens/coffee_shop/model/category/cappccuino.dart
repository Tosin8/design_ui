// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cappccuino {
   String image;
   String title; 
   String volume;
   double price;
   String rating; 
   String description; 
  Cappccuino({
    required this.image,
    required this.title,
    required this.volume,
    required this.price,
    required this.rating,
    required this.description
  });

  get length => null;
}


List<Cappccuino> cappccuinos = [
  
  Cappccuino(
    image: "assets/coffee_shop/products/png/1.png",
    title: "Mocha Cappuccino",
    rating: '3.5', 
    
    price: 200,
     description: 'The New Balance Fresh Foam 1080v12 is a premium neutral running shoe designed for long-distance training. Featuring Fresh Foam X midsole technology, it delivers superior cushioning and energy return to propel you through every stride. The engineered mesh upper offers breathable comfort, while the blown rubber outsole provides durability and grip on various surfaces. Experience a smooth, responsive ride that keeps you going mile after mile.', 
     volume: '120 ml',
  ), 
  Cappccuino(
    image: "assets/coffee_shop/products/png/2.png",
    title: "Honey Cappccuino",
    
    price:140, 
    description: 'Conquer the trails with the Merrell Moab 3 Mid Waterproof Hiking Boots. Crafted with a waterproof membrane and durable leather and mesh uppers, these boots keep your feet dry and protected. The Vibram® outsole ensures excellent traction on rugged terrain, while the molded nylon arch shank and air cushion heel absorb shock for all-day comfort. With a supportive fit and versatile style, these boots are your reliable companions for outdoor adventures.',
     volume: '3.8', 
     rating: '4.5',
  ), 
Cappccuino(
    image: "assets/coffee_shop/products/png/3.png",
    title: "Coconut Cappuccino", 
    rating: '4.5',
    price: 420,
     description: 'Step into sophistication with the Cole Haan Grand Ambition Wingtip Oxford. Handcrafted from full-grain leather, these classic wingtips exude timeless elegance. The lightweight EVA outsole with rubber pods provides flexibility and traction, while the fully padded leather sock lining ensures all-day comfort. The burnished toe and brogue detailing add a touch of distinction, making these shoes perfect for the office or formal occasions.', volume: '160ml',
  ), 
  Cappccuino(
    image: "assets/coffee_shop/products/png/4.png",
    title: "Caramel Cappuccino", 
    
    price: 310,
     description: 'Elevate your street style with the adidas Originals Stan Smith Sneakers. These iconic low-tops feature a clean, minimalist design with a full leather upper and perforated 3-Stripes. The Ortholite® sockliner delivers cushioned comfort, while the rubber cupsole ensures durability and grip. With a classic look that never goes out of style, these sneakers seamlessly transition from casual outings to trendy ensembles.', volume: '120ml', rating: '3.8',
  ), 
  Cappccuino(
    image: "assets/coffee_shop/products/png/3.png",
    title: "Hazelnut Cappuccino",
    volume: '110ml',
    price: 240,
    rating: '4.5',
     description: 'Embrace the summer vibes with the Teva Hurricane XLT2 Sandals. Designed for outdoor adventures, these sandals feature a water-ready polyester webbing upper with a quick-drying midsole. The rust-free zinc-alloy hardware and durable rubber outsole provide lasting wear, while the EVA foam footbed offers cushioned comfort. With adjustable straps and a secure fit, these sandals are ideal for hiking, water sports, or simply enjoying the great outdoors.',
  ), 
];