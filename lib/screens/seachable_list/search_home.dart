import 'package:flutter/material.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({super.key});

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Container(
          color: Colors.grey.shade900
        )
      ),
    );
  }
}