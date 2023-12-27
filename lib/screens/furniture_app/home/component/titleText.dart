import 'package:flutter/material.dart';

class titleText extends StatelessWidget {
  const titleText({
    super.key, required this.name,
  });

final String name; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(name, 
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
    );
  }
}