import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Smart extends StatefulWidget {
  const Smart({super.key});

  @override
  State<Smart> createState() => _SmartState();
}

class _SmartState extends State<Smart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(30), 
        child: Column(
          children: [
            Expanded(child: VerticalCardPager(titles: titles, images: images))
          ],
        ),
        ),
    );
  }
}