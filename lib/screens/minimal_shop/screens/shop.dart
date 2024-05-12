import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/app_drawer.dart';

class MinimalShop extends StatelessWidget {
  const MinimalShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: MinimalDrawer(),
      appBar: AppBar(
      title: Text('Minimal Shop', style: TextStyle(color: Colors.black, fontSize: 16),), 
      centerTitle: true,
      ),
    
    );
  }
}

