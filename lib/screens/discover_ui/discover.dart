import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {

  final _image = [
'assets/city_tour/thailand.jpg', 
'assets/city_tour/bejing_china.jpg', 
'assets/city_tour/new_york.jpg', 
'assets/city_tour/tokyo_japan.jpg', 
'assets/city_tour/syndey.jpg'

  ]; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
      SliverToBoxAdapter(
        child: Padding(
      padding: 
        const EdgeInsets.all(20), 
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60), 
        Text("Discover \nToday's Post", 
        style: TextStyle(fontSize: 30,
         fontWeight: FontWeight.w600, 
         color: Colors.grey.shade800),), 
        const SizedBox(height: 10), 
        Container(
          
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12), 
          ),
          
           child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: InputBorder.none,
              
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade700), 
              hintText: 'Make your search', 
              hintStyle: TextStyle(color: Colors.grey.shade500)
              
          ),
          
        )), 
      ],
        ),),
      )
      
            ];
          }, body: DefaultTabController(
            length: 4,
           child: Column(
            children: [
              Container(
      child:  TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.grey.shade700,
        tabs: const [
        Tab(text: 'Popular',), 
         Tab(text: 'New'), 
         Tab(text: 'Classic'), 
         Tab(text: 'Sylish',), 
        
      
      
      ]),
              ), 
              Expanded(child: 
              TabBarView(
                children: [
                // Container(color: Colors.blue,),
                // Container(color: Colors.red,),
                // Container(color: Colors.yellow,),
                // Container(color: Colors.green,),
      StaggeredGridView.countBuilder(
        crossAxisCount: 4, 
        itemCount: _image.length,
        itemBuilder: (context, index) {
        return Container(
      color: Colors.black, child: Image.asset(_image[index], fit: BoxFit.cover)
        );
      },
      staggeredTileBuilder: (index) => StaggeredTile.count(2, index.isEven ? 4:2),
      ),
       Container(color: Colors.blue,), 
       Center(
        child: Text('Hello'),
       ),
       Center(child: Text('Hello'),)
           ])),
          
         ] )
         ) )),
    ); 
    
  }
}