import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
           color: const Color(0xff000000),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Samyie', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
        ),
    );
  }
}