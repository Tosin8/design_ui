import 'package:flutter/material.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({super.key});

  @override
  State<TravelHome> createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  late PageController _pageController; 

void _onScroll() {

}
  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll); 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: PageView(
        controller: _pageController,
        children: [
          Screen(image: 'assets/travel_ui/images/safari.jpg'), 
            Screen(image: 'assets/travel_ui/images/victoria.jpg'),   
            Screen(image: 'assets/travel_ui/images/wall.jpg'), 

               ],
      )
    );
  }


  Widget Screen({image}) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image), 
        fit: BoxFit.cover), 
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight, 
            stops: const [0.3, 0.9],
            colors: [Colors.black.withOpacity(.9), 
          
          Colors.black.withOpacity(0.2), 
          ])
        ),
      )
    ); 
  }
}