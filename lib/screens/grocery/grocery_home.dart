import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
        leading: IconButton(
            icon: const Icon(Iconsax.menu),
          onPressed: (){
          Scaffold.of(context).openDrawer();
       
  }),
        title: Row(
       //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Container(
              child: Image.asset('assets/grocery/logo.png', height: 40, width: 40,),
            ), 
            const Text('FreshFetch', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
          ],
        ), centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
           child: Padding(
             padding: const EdgeInsets.all(2.0),
             child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: const AssetImage('assets/grocery/grocery_app_banner.jpg'),
                  fit: BoxFit.contain,
                
                )
              ),
              
             ),
           )),
      ),
      body: CategoryCard(),
      
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200, width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              
              image: const AssetImage('assets/grocery/category/beef.jpg'), fit: BoxFit.cover, 
              colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),), 
          ),
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Beef', style: TextStyle(color: Colors.white, fontSize: 20),),
          ))
        ),
      );
  }
}