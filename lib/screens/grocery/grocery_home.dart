import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/grocery/model/category_model.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> with SingleTickerProviderStateMixin {
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
             padding: const EdgeInsets.all(4.0),
             child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/grocery/grocery_app_banner.jpg'),
                  fit: BoxFit.contain,
                
                )
              ),
              
             ),
           )),
      ),
      body:AnimationLimiter(
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: const Duration(milliseconds: 1500),
            columnCount: 2,
            child: SlideAnimation(
              curve: Curves.easeIn,
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: CategoryCard
                (
                  categories: categories[index], title: categories[index].title, image: categories[index].image,
                   onTap: categories[index].onTap,),
              )
            )
          ); 
        }
      ),
    )
      
      // CategoryCard(),
    );     
    
  }
}

class CategoryCard extends StatelessWidget {

final String title; 
final VoidCallback onTap;
final String image;
  final Category categories;
  const CategoryCard({
    super.key, required this.categories, required this.title, required this.image, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200, width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              
              image:  AssetImage(categories.image), fit: BoxFit.cover, 
              colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.darken),), 
          ),
          child:  Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(categories.title, style: const TextStyle(color: Colors.white, fontSize: 20),),
          ))
        ),
      );
  }
}