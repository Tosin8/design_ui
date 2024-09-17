// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShopLanding extends StatelessWidget {
  const ShopLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: const Icon(Icons.menu), 
        title: const Text('Kitchen'), 
        toolbarHeight: 30, 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
           child: Padding(
             padding: const EdgeInsets.only(left: 15.0, right: 15.0),
             child: TextFormField(
              keyboardType: TextInputType.text,
        
              decoration: const InputDecoration(
          
                hintText: 'Search here..', 
                prefixIcon: Icon(Icons.search), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10), 
                  
                  ),
                  borderSide: BorderSide(
                    width: 6.0, 
                  ) 
                  ), 
                  
                  focusedBorder: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.all(Radius.circular(10),
                     
                  ), 
                  
                  ), 
                  focusColor: Colors.green, 
               
                )

              ),
             )
           )),
           body: Container(
            child:  const Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Icon(Iconsax.gps, color: Colors.green,), 
                    SizedBox(width: 7,), 
                    Text('Lekki, Lagos Nigeria')
                  ],), 
                  SizedBox(height: 18,), 
                
                

                ],
              ),
            ),
           )
      
    ); 
  }
}

class RestuarantCard extends StatelessWidget {
  const RestuarantCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.image,
  }) : super(key: key);

final String title; 
final GestureTapCallback onTap; 
final String image; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap, 
      child: Container(
        height: 160, 
        width: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover), 
        ),
        foregroundDecoration:  BoxDecoration(
           borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
           
              Colors.black.withOpacity(0.7), 
              Colors.transparent
            ], 
            begin: Alignment.bottomRight, 
            end: Alignment.topRight, 
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
                               
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 20,  
              fontWeight: FontWeight.bold),)
            ],
          ),
        ) ),
    );
  }
}
