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
        child:  Padding(padding: const EdgeInsets.all(20), 
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ), 
            const Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              crossAxisAlignment: CrossAxisAlignment.baseline, 
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('1', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),), 
                Text('/4', style: TextStyle(color: Colors.white, fontSize: 15, ),)
              ],
            ), 
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const Text('SAFARI', 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                   fontSize: 30),), 
                   const SizedBox(height: 20,), 
                   Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star, 
                        color: Colors.yellow, size: 15,),), 
                                        Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star, 
                        color: Colors.yellow, size: 15,),),                 Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star, 
                        color: Colors.yellow, size: 15,),),                 Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star_half, 
                        color: Colors.grey, size: 15,),),                 Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(Icons.star_half, 
                        color: Colors.grey, size: 15,),), 
                    ],
                   )
              ],
            )), 
          ],
        ))
      )
    ); 
  }
}