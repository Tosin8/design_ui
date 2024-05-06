import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({super.key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> with TickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
    length: 4, 
    vsync: this);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            
          },
          child: const Icon(Iconsax.message)),
          actions: const [
             CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/coffee_shop/2.jpg'),
            ), 
            SizedBox(width: 10,), 
          ],
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Find the best \ncoffee for you', 
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
            ),
            
            const SizedBox(height: 8,), 
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), 
                    ),
                    focusColor: Colors.grey[400],
                    focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10), 
                    ),
                    prefixIcon: const Icon(Icons.search), 
                    hintText: 'Search your coffee',
                  ),
                ),
            ), 
            const SizedBox(height: 10,), 
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Text('Categories',
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 10,), 
            Expanded(
              child: Container(
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                  Tab(
                    text: 'Cappccuino',
                  ), 
                  Tab(
                    text: 'Espresso',
                  ), 
                   Tab(
                    text: 'Latte'
                  ),
                  Tab(
                    text: 'Mocha'
                  ),
                  ], 
                )
              ),
              
            ),
            Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('Hi'), 
                  Text('Hello'), 
                  Text('Bye'), 
                   Text('Bye')
                ]),
            ) 


    ]        
          
        ),
      
    );
  }
}