import 'package:flutter/material.dart';

import 'shop1.dart';

// Importing the pages


class AppRoutes {
  static const String burgerKing = '/burger-king';
  static const String mcDonalds = '/mcdonalds';
  static const String kfc = '/kfc';
  static const String subway = '/subway';
  static const String pizzaHut = '/pizza-hut';
  static const String dominionPizza = '/dominion-pizza';

  // Define your app routes
  static Map<String, WidgetBuilder> routes = {
    //burgerKing: (context) => const BurgerKingPage(),
   // mcDonalds: (context) => const McDonaldsPage(),
   // kfc: (context) => const KFCPage(),
    subway: (context) => const Shop1(),
   // pizzaHut: (context) => const PizzaHutPage(),
    //dominionPizza: (context) => const DominionPizzaPage(),
  };
}
