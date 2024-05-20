import 'package:flutter/material.dart';

class titleText extends StatelessWidget {
  const titleText({
    Key? key,
    required this.title,
  }) : super(key: key);

final String title; 
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
    );
  }
}
