import 'package:flutter/material.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({super.key});

  @override
  State<TravelHome> createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  late PageController _pageController; 
  int totalPage = 3; 

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
          Screen(image: 'assets/travel_ui/images/safari.jpg', 
          title: 'SAFARI RESERVE', 
          description: '', 
          page: 1), 
            Screen(image: 'assets/travel_ui/images/victoria.jpg', 
            title: 'VICTORIA FALL',
            description: '', 
            page: 2),   
            Screen(image: 'assets/travel_ui/images/wall.jpg', 
            title: 'WALL OF CHINA', 
            description: '', 
            page: 3), 

               ],
      )
    );
  }


  Widget Screen({image, title, description, page}) {
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
             Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              crossAxisAlignment: CrossAxisAlignment.baseline, 
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(page.toString(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),), 
                Text('/$totalPage', style: const TextStyle(color: Colors.white, fontSize: 15, ),)
              ],
            ), 
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                 Text(title, 
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                   fontSize: 26),), 
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
                        const Text('3', 
                        style: TextStyle(color: Colors.white),), 
                        const Text('(200)', 
                        style: TextStyle(color: Colors.white),)
                    ],
                   ), 
                   const SizedBox(height: 20,), 
                   Padding(
                     padding: const EdgeInsets.only(right: 30.0),
                     child: Text(description, 
                     style: const TextStyle(color: Colors.white, 
                     fontSize: 18, height: 1.2),),
                   ), 
              ],
            )), 
          ],
        ))
      )
    ); 
  }
}