import 'package:flutter/material.dart';
import 'package:ui_design/screens/coffee_shop/widgets/bottom_nav.dart';

class CoffeeHome extends StatefulWidget {
  const CoffeeHome({super.key});

  @override
  State<CoffeeHome> createState() => _CoffeeHomeState();
}

class _CoffeeHomeState extends State<CoffeeHome> {

  // navigate bottom bar. 
  int _selectedIndex = 0; 
  void navigateBottomBar(int index) 
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:  CoffeeBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}