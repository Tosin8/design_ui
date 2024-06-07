import 'package:flutter/material.dart';

class SubjectCard2M extends StatelessWidget {
  const SubjectCard2M({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 140, 
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(15), 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(1.0, 1.0), 
            blurRadius: 12.0,
            spreadRadius: 1.0,  
          ), 
          const BoxShadow(
            color: Colors.white, 
            offset: Offset(-1.0, -1.0), 
            spreadRadius: 1.0,  
            blurRadius: 12.0, 
          ),
        ],
            
       
      ),
      child:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // Top layer. 
            Row(
              children: [
    
                // Course Image
                Container(
                  width: 80,
                   height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent, 
                  shape: BoxShape.circle, 
                  ),
                  child: Padding( 
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/dashboard/icons/photography.png', 
                  ),
                  ),
        
                ), 
                const SizedBox(width: 16,), 
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Photography',
                     style: TextStyle(color: Colors.black, 
                     fontWeight: FontWeight.bold,
                     wordSpacing: 2.0 , fontSize: 18),), 
                    SizedBox(height: 2,), 
                    Text('8 Lessons', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w100, fontSize: 18),), 
                    SizedBox(height: 10,), 
                    Text('Type', style: TextStyle(color: Colors.grey),), 
                Text('Arts and Design', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ), 
    
   
    
          ],
          
        ),
      ),
    );
  }
}