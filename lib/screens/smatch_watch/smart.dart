import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Smart extends StatefulWidget {
  const Smart({super.key});

  @override
  State<Smart> createState() => _SmartState();
}

class _SmartState extends State<Smart> {

// final images = [
//   'assets/smart/music.jpg',
//   'assets/smart/alarm.jpg',
//   'assets/smart/calendar.jpg', 
//   'assets/smart/settings.jpg'
// ]; 

final images = [
  Container(color: Colors.red,), 
  Container(color: Colors.yellow,), 
  Container(color: Colors.amber,), 
  Container(color: Colors.green,)
];
final titles = [
  'Music', 'Alarm', 'Calendar', 'Settings'
]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: EdgeInsets.all(30), 
        child: Column(
          children: [
            Expanded(
              child: VerticalCardPager(
                titles: titles, 
                images: images, 
              // images: images.map((image) => Image.asset(images as String)).toList(),


              onPageChanged: (page){print(page);
               },
              ), 
              )
          ],
        ),
        ),
    );
  }
}