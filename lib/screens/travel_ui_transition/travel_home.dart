// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';

// class TravelHome extends StatefulWidget {
//   const TravelHome({super.key});

//   @override
//   State<TravelHome> createState() => _TravelHomeState();
// }

// class _TravelHomeState extends State<TravelHome> {
//   late PageController _pageController; 
//   int totalPage = 3; 

// void _onScroll() {

// }
//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 0)..addListener(_onScroll); 
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold( 
//       body: Stack(
//         children:[ PageView(
//           controller: _pageController,
//           children: [
//             Screen(image: 'assets/travel_ui/images/safari.jpg', 
//             title: 'SAFARI RESERVE', location: 'Zambia',
//             description: 'Embark on a thrilling journey into the wild as you explore a premier safari reserve. Experience the untamed beauty of nature up close, where vast savannahs and lush forests teem with diverse wildlife. With expert guides leading the way, witness majestic animals like elephants, lions, and giraffes in their natural habitats. ', 
//             page: 1), 
//               Screen(image: 'assets/travel_ui/images/victoria.jpg', location: 'USA',
//               title: 'VICTORIA FALL',
//               description: 'Discover the awe-inspiring power and beauty of Victoria Falls, one of the world\'s most spectacular natural wonders. Known locally as The Smoke that Thunders this breathtaking waterfall spans the border between Zambia and Zimbabwe, sending plumes of mist skyward as it plunges into the Zambezi River gorge below',
//               page: 2),   
//               Screen(image: 'assets/travel_ui/images/wall.jpg', location: 'China',
//               title: 'WALL OF CHINA', 
//               description: ' This tour takes you to some of the most well-preserved sections of the wall, where you\'ll learn about its rich history, strategic importance, and the immense efforts taken to build this massive structure over centuries. Enjoy breathtaking views of the rugged mountains and lush valleys that stretch as far as the eye can see. ', 
//               page: 3), 
        
//                  ],
//         ),
//          Positioned(
//           bottom: 30,
//           right: 30, left: 30, 
//           child: Container(
//             height: 60, 
//             width: 300,
//             decoration:  const BoxDecoration(color: Colors.blueGrey,
//              borderRadius: BorderRadius.all(Radius.circular(10))),
//             child: const Align(child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20),)),)),
//     ]  )
//     );
//   }


//   Widget Screen({image, title, description, page, location}) {
//     return Container(
//       decoration:  BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(image), 
//         fit: BoxFit.cover), 
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.bottomRight, 
//             stops: const [0.3, 0.9],
//             colors: [Colors.black.withOpacity(.9), 
          
//           Colors.black.withOpacity(0.2), 
//           ])
//         ),
//         child:  Padding(padding: const EdgeInsets.all(20), 
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 40,
//             ), 
//              Row(
//               mainAxisAlignment: MainAxisAlignment.end, 
//               crossAxisAlignment: CrossAxisAlignment.baseline, 
//               textBaseline: TextBaseline.alphabetic,
//               children: [
//                 Text(page.toString(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),), 
//                 Text('/$totalPage', style: const TextStyle(color: Colors.white, fontSize: 15, ),)
//               ],
//             ), 
//             Expanded(child: Column(
//               mainAxisAlignment: MainAxisAlignment.end, 
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
                
//                  FadeInUp(
//               curve: Curves.ease, 
//               duration: const Duration(milliseconds: 1200),
//                    child: Text(title, 
//                                    style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                      fontSize: 26),),
//                  ), 
//                    const SizedBox(height: 8,), 
//                     FadeInUp(
//                       delay: const Duration(milliseconds: 1400),
//               curve: Curves.ease, 
//               duration: const Duration(milliseconds: 1200),
//                    child: Row(
//                      children:[
//                       const Icon(Icons.location_on, color: Colors.white,), const SizedBox(width: 2,), 
//                        Text(location, 
//                                      style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                        fontSize: 18),),
//                  ] ),
//                  ),
//                    Row(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(right: 3),
//                         child: const Icon(Icons.star, 
//                         color: Colors.yellow, size: 15,),), 
//                                         Container(
//                         margin: const EdgeInsets.only(right: 3),
//                         child: const Icon(Icons.star, 
//                         color: Colors.yellow, size: 15,),),                 Container(
//                         margin: const EdgeInsets.only(right: 3),
//                         child: const Icon(Icons.star, 
//                         color: Colors.yellow, size: 15,),),                 Container(
//                         margin: const EdgeInsets.only(right: 3),
//                         child: const Icon(Icons.star_half, 
//                         color: Colors.grey, size: 15,),),                 Container(
//                         margin: const EdgeInsets.only(right: 3),
//                         child: const Icon(Icons.star_half, 
//                         color: Colors.grey, size: 15,),), 
//                         const Text('3', 
//                         style: TextStyle(color: Colors.white),), 
//                         const Text('(200)', 
//                         style: TextStyle(color: Colors.white),)
//                     ],
//                    ), 
//                    const SizedBox(height: 20,), 
//                    Padding(
//                      padding: const EdgeInsets.only(right: 20.0),
//                      child: FadeInUp(
//                       delay: const Duration(milliseconds: 1000),
//                        child: Text(description, 
//                        style: const TextStyle(color: Colors.white, 
//                        fontSize: 18, ),),
//                      ),
//                    ), 
//                    const SizedBox(height: 100,), 
//               ],
//             )), 
//           ],
//         ))
//       )
//     ); 
//   }
// }

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TravelHome extends StatefulWidget {
  const TravelHome({super.key});

  @override
  State<TravelHome> createState() => _TravelHomeState();
}

class _TravelHomeState extends State<TravelHome> {
  late PageController _pageController;
  int totalPage = 3;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _pageController,
          children: [
            Screen(
              videoPath: 'assets/travel_ui/videos/nike.mp4',
              title: 'SAFARI RESERVE',
              location: 'Zambia',
              description:
                  'Embark on a thrilling journey into the wild as you explore a premier safari reserve. Experience the untamed beauty of nature up close, where vast savannahs and lush forests teem with diverse wildlife. With expert guides leading the way, witness majestic animals like elephants, lions, and giraffes in their natural habitats.',
              page: 1,
            ),
            Screen(
              videoPath: 'assets/travel_ui/videos/victoria.mp4',
              title: 'VICTORIA FALL',
              location: 'USA',
              description:
                  'Discover the awe-inspiring power and beauty of Victoria Falls, one of the world\'s most spectacular natural wonders. Known locally as The Smoke that Thunders this breathtaking waterfall spans the border between Zambia and Zimbabwe, sending plumes of mist skyward as it plunges into the Zambezi River gorge below.',
              page: 2,
            ),
            Screen(
              videoPath: 'assets/travel_ui/videos/wall.mp4',
              location: 'China',
              title: 'WALL OF CHINA',
              description:
                  ' This tour takes you to some of the most well-preserved sections of the wall, where you\'ll learn about its rich history, strategic importance, and the immense efforts taken to build this massive structure over centuries. Enjoy breathtaking views of the rugged mountains and lush valleys that stretch as far as the eye can see.',
              page: 3,
            ),
          ],
        ),
        Positioned(
          bottom: 30,
          right: 30,
          left: 30,
          child: Container(
            height: 60,
            width: 300,
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Align(
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget Screen({required String videoPath, title, description, page, location}) {
    return Stack(
      children: [
        VideoBackground(videoPath: videoPath),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.3, 0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(0.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
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
                    Text(
                      page.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '/$totalPage',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInUp(
                        delay: const Duration(milliseconds: 1400),
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 1200),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              location,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: FadeInUp(
                          delay: const Duration(milliseconds: 1000),
                          child: Text(
                            description,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoBackground extends StatefulWidget {
  final String videoPath;

  const VideoBackground({required this.videoPath, Key? key}) : super(key: key);

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}
