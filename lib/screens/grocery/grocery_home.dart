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
      body: GestureDetector( 
        onTap: (){},
        child: Container(
          height: 400, width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              
              image: const AssetImage('assets/grocery/category/beef.jpg'), fit: BoxFit.cover, 
              colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),), 
          ),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text('Beef', style: TextStyle(color: Colors.white, fontSize: 16),))
        ),
      ), 
    );
  }
}