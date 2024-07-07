import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class phonecall extends StatelessWidget {
  const phonecall({super.key});

  final number = '07012345678';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Make Phone Call'),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Your order is now sent our for delivery, you can call our dispatch rider for delivery updates. ', 
          textAlign: TextAlign.center,),
          const SizedBox(height: 100,),  
          Container(
            decoration: BoxDecoration(color: Colors.grey[300]),
height: 100,
width: double.infinity,
child: Padding(
  padding: const EdgeInsets.all(18.0),
  child: Row(
     children: [
      Container(
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child:IconButton(
          onPressed: () async {
            final uri = Uri.parse('tel:$number');

            // indirect phone call
          //  await launchUrl(uri);

            // direct phone call
            await FlutterPhoneDirectCaller.callNumber(number); 
           // await launchUrl(Uri(scheme: 'tel', path: number));
          },
          icon: const Icon(Icons.phone, color: Colors.blue, size: 40),
      ), 
      //IconButton(onPressed: () async {
// launchUrl('tel://$number'); 


       // }, 
     //   icon: const Icon(Icons.phone, color: Colors.blue,size: 40,)),
        
      
      ),
      const SizedBox(width: 30,), 
      const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8,), 
          Text('Jide Michaeal', 
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),), 
          Text('Dispatch rider')
        ],
      )
     ],
  ),
),
          )
        ],
      ),
    );
  }
}