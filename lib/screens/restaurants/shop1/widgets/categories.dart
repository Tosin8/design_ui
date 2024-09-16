import 'package:flutter/material.dart';
import 'package:ui_design/screens/restaurants/shop1/model/shop_model.dart';


class ShopCategories extends SliverPersistentHeaderDelegate{

  final ValueChanged<int> onChanged; 
  final int selectedIndex;

  ShopCategories({required this.onChanged, required this.selectedIndex}); 


  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
  
    return Container(
      height: 52,
      color: Colors.white, 
      child: Categories(onChanged: onChanged,
      selectedIndex: selectedIndex,),
    ); 
  }

  @override
  double get maxExtent => 52;

  @override
  double get minExtent => 52; 

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
   return true; 
  }
  
}

class Categories extends StatefulWidget {
  const Categories({super.key, required this.onChanged, required this.selectedIndex});

  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late ScrollController controller; 

@override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
     controller.dispose();
    super.dispose();
   
  }

  
   @override
  void didUpdateWidget (covariant Categories oldWidget) {
    controller.animateTo (
      
      80.0 * widget.selectedIndex, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    super.didUpdateWidget(oldWidget);
    
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demoCategoriesMenus.length, 
          (index) =>   Padding(padding: const EdgeInsets.only(left: 8), 
          child: TextButton(onPressed: (){
            widget.onChanged(index);
          },
          style: TextButton.styleFrom(foregroundColor: widget.selectedIndex == index ? Colors.black : Colors.black26),
           child: Text(demoCategoriesMenus[index].category, style: const TextStyle(fontSize: 20),))
          )),
      )
    );
  }
}