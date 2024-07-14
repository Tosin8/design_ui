import 'package:flutter/material.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
         icon: const Icon(Icons.navigation_rounded)),
        title: const Text('FreshFetch', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),), 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
           child: Container(
             height: 120.0,
             width: double.infinity,
             child: Image.asset('assets/grocey/grocery_app_banner.jpg'),
           )),
      ),
    );
  }
}