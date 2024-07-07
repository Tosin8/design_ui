import 'package:flutter/material.dart';

class UISlidable extends StatelessWidget {
  const UISlidable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text('Slidable'),),
        body: ListView.separated(itemBuilder: (context, index) {
          return Container(height: 50, color: Colors.green,);
        }, separatorBuilder: (context, index) => const Divider(), itemCount: 5)
    );
  }
}