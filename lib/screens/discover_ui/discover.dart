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
      Text("Discover \nToday's Post", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.grey.shade800),), 
      const SizedBox(height: 10), 
      Container(
        
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12), 
        ),
        
         child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search), 
        ),
        
      )), 
    ],
  ),),
)

          ];
        }, body: const Center(child: Text('hello'),))
    );
  }
}