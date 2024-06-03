import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rightscreen extends StatelessWidget {
  const Rightscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView( 
         scrollDirection: Axis.vertical, 
         children: [
          Container(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                // Premium Card
                Container(
                  height: 260, 
                  width: 380, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), 
                    color: Colors.black
                  ),
                  child:  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // title 
                        Text('Samyie', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        
                        SizedBox(height: 20,), 
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Go Premium', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                                ), 

                                SizedBox(height: 10,),
                                Text('Explore 200+ Courses with \nPremium Membership', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w200),
                                ), 
                              ],
                            ), 
                            SizedBox(width: 30,), 
                            Expanded(
                              child: Container(
                                width: 80, 
                                height: 120,
                                child: Image.asset('assets/dashboard/icons/model.png')))
                          ],
                        )
, 
SizedBox(height: 20,), 


GestureDetector( 
  onTap: () {}, 
  child: Container(
    height: 32, width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.yellowAccent
    ),
    child: Align(child: Text('Get Access')),
  ),
)

                      ],
                    ),
                  ),
                )
              ],
            ),
          )
         ],
      
      ),
    );
  }
}