import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rightscreen extends StatelessWidget {
  const Rightscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView( 
       scrollDirection: Axis.vertical, 
       children: [
        Container(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Premium Card
              Container(
                height: 300, 
                width: 300, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                ),
              )
            ],
          ),
        )
       ],

    );
  }
}