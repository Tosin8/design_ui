import 'package:flutter/material.dart';
import 'package:ui_design/screens/restaurants/shop1/model/shop_model.dart';

import 'widgets/categories.dart';
import 'widgets/shop_appbar.dart';
import 'widgets/shop_info.dart';

class Shop1 extends StatefulWidget {
  const Shop1({super.key});

  @override
  State<Shop1> createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> {
  final scrollController = ScrollController(); 

  int selectedCategoryIndex = 0; 

  double shopInfoHeight = 200 + 170 - kToolbarHeight; // appbar expanded height + info height 

  @override
  void initState() {
    createBreakPoints(); 
  scrollController.addListener((){
    //print(scrollController.offset); 
    updateCategoryIndexOnScroll(scrollController.offset); 
  }); 
    super.initState();
  }

  void scrollToCategory (int index) {
if (selectedCategoryIndex != index) {
    int totalItems = 0; 

    for(var i = 0; i < index; i++){
      totalItems += demoCategoriesMenus[i].items.length;
    }
   scrollController.animateTo(
    // 116 = 100 menu items height + 16 bottom padding of each item. 
    // 50 = 18 title font size + 32 (16 vertical padding on title)
    shopInfoHeight + (116 * totalItems)+ (50 * index), 
   duration: const Duration(milliseconds: 500),
    curve: Curves.easeIn);  
    setState(() {
      selectedCategoryIndex = index;
    });
  }
  }

  // scroll to selected categories. 

List<double> breakPoints = []; 
void createBreakPoints(){

  // 116 = 100 menu item height + 16 bottom padding of each item.
  // 50 = 18 title font size + 32 (16 vertical padding on title)

double firstBreakPoint = shopInfoHeight + 50 + (116 * demoCategoriesMenus[0].items.length);
breakPoints.add(firstBreakPoint);
for( var i = 1; i < demoCategoriesMenus.length; i++){
  // double breakPoint = breakPoints[i] + 116 + 50 + (116 * demoCategoriesMenus[i+1].items.length);
  double breakPoint = breakPoints.last + 50 + (116 * demoCategoriesMenus[i].items.length);
  breakPoints.add(breakPoint);
}

}

void updateCategoryIndexOnScroll(double offset) {
  for (var i = 0; i < demoCategoriesMenus.length; i++) {
    if (i == 0) {
      if ((offset < breakPoints.first) & (selectedCategoryIndex != 0)) {
        setState(() {
          selectedCategoryIndex = 0;
        });
      } 
    }
     else if ((breakPoints [i - 1] <= offset) & (offset < breakPoints[i])){
if(selectedCategoryIndex != i) {
  setState(() {
    selectedCategoryIndex = i;
  });
}


     }
  }
 
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: scrollController, 
        slivers: [
          const ShopAppBar(), 
          const SliverToBoxAdapter(
            child: ShopInfo(),
          ),

          // WITH NO SCROLL.  
          // SliverToBoxAdapter(
          //   child: Categories (
          //      onChanged: (value) {}, 
          //      selectedIndex: 0, 
          //      ), 
          // ), 
          SliverPersistentHeader(
            delegate: ShopCategories(onChanged: scrollToCategory, 
            selectedIndex: selectedCategoryIndex, 
            
            
            ), 
            pinned: true,
            ), 
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16), 
          sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
          (context, categoryIndex) {
            List<Menu> items = demoCategoriesMenus[categoryIndex].items;
          return MenuCategoryItem(
            title: demoCategoriesMenus[categoryIndex].category,
            items: List.generate(items.length,
             (index) => Padding(padding: const EdgeInsets.only(bottom: 16), 
             child: MenuCard( 
              title: items[index].title, 
              image: items[index].image,
               price: items[index].price, 
               description: items[index].description
               ), )
               ),
            
             );
          
              }  , 
              childCount: demoCategoriesMenus.length, 
              )),
        )
        ],
      )
    );
  }
}

class MenuCard extends StatelessWidget {
   MenuCard({super.key, required this.title, required this.price, required this.image, required this.description});

String title; 
double price; 
String image; 
String description; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
        children: [
          Container( 
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
            width: 100, height: 100,
          
            ),
            const SizedBox(width: 10,), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),), 
              SizedBox(
                width: 250 ,
                child: Text(description, maxLines: 2,softWrap: true,overflow: TextOverflow.ellipsis,)),
              const SizedBox(height: 5,), 
              Text('\$$price', style: const TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}



class MenuCategoryItem extends StatelessWidget {
  // Constructor with required parameters
  const MenuCategoryItem({super.key, required this.title, required this.items});

  // Fields
  final String title; // Use 'final' to indicate immutability
  final List<Padding> items; // Ensure the list is final and initialized

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0), // Optional padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Optional styling
          ),
          const SizedBox(height: 10), // Space between title and items
          Column(
        
            children: items, // Pass the list of Padding widgets
          ),
        ],
      ),
    );
  }
}
