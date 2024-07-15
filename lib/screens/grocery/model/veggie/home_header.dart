import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        elevation: 0, 
        leading: IconButton(onPressed: (){},
       icon: const Icon(Icons.arrow_back_ios), 
       ),
       bottom: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Column(
          children: [Text('FreshFetch', style: TextStyle(color: Colors.green, fontWeight: FontWeight.normal, fontSize: 10),), 
          Text('Fruit & Veggies',
           style: TextStyle(color: Colors.grey),
           )],
          ),), 
    
      ), 
    );
  }
}