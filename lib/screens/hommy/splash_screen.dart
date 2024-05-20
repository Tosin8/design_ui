
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';


class Hommy extends StatelessWidget {
  const Hommy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/furniture_grid/4.jpg',), fit: BoxFit.cover)
    ),
    child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight, 
          colors: [
            Colors.black, 
            Colors.transparent, 
          ])
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 100,),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Everything\nyour home\ndeserves',
             style: TextStyle(
               fontWeight: FontWeight.bold,   
               color: Colors.white, 
               fontSize: 30,
               letterSpacing: 2.0)),
          ),
          const SizedBox(height: 20,), 
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text('Total Furniture Solutions for Hotels\nApartments, Residence and Commercial\nOffice Residence. ', 
            style: TextStyle(color: Colors.white),),
          ), 

          const SizedBox(height: 320,), 
          Center(
            child: Container(
              height: 60, width: 250,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(25), 
            color: Colors.white
              ),
            
              child: const Align(
                child: Row(
                  children: [
                    Text('Get Started',),
                  ],
                ),
              )
            ).asGlass(
              enabled: true,
              frosted: true,
                    tintColor: Colors.transparent,
                    clipBorderRadius: BorderRadius.circular(15.0),
            ),
          )
          
        ],
      ),
    ),
    )
    );
  }
}