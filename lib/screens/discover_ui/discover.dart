import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
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
            )

         ])),
        )
        );
    
  }
}