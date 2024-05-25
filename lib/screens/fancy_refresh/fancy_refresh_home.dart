import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FancyRefreshPage extends StatelessWidget {
  const FancyRefreshPage({super.key});

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: LiquidPullToRefresh( 
        onRefresh: _handleRefresh, 
        color: Colors.deepPurple, 
        backgroundColor: Colors.deepPurple[200],
        showChildOpacityTransition: false,
        animSpeedFactor: 2,
        height: 300,
        child: ListView(
          children: [
            Padding(padding: 
              const EdgeInsets.all(20), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), 
                child: Container( 
                  height: 300, color: Colors.deepPurple,
                ),
              ),), 
               Padding(padding: 
              const EdgeInsets.all(20), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), 
                child: Container( 
                  height: 300, color: Colors.deepPurple,
                ),
              ),), 
               Padding(padding: 
              const EdgeInsets.all(20), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), 
                child: Container( 
                  height: 300, color: Colors.deepPurple,
                ),
              ),)
          ],
        ),
      )
    );
  }
}