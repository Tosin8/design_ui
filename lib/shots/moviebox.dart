import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ui_design/shots/data/moviebox.dart';
import 'package:video_player/video_player.dart';

class Moviebox extends StatefulWidget {
  const Moviebox({super.key});

  @override
  State<Moviebox> createState() => _MovieboxState();
}

class _MovieboxState extends State<Moviebox> {
// late VideoPlayerController _controller; 
// int _currentIndex = 0;

// void _playVideo({int index = 0, bool init = false}){
//   if(index <0 || index >= videos.length) return; 

//   _controller = VideoPlayerController.networkUrl(
//     videos[_currentIndex].url as Uri
//   ) ..addListener(()=> setState(() {
    
//   }))
//   ..setLooping(true) 
//   ..initialize().then((value) => _controller.play());
// }


//   @override
//   void initState() {
//     _playVideo(init: true); 
//     super.initState();
//   }

//   @override
//   void dispose() {
    
//     super.dispose();
//     _controller.dispose();
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black, 
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title: const Text('Movie Box', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body:ListView(
          children:   [
             const Text('Hi, Mikky', style: TextStyle(fontSize: 18, color: Colors.white),), 
             const SizedBox(height: 10,), 
          const TextField(
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
       ),
    filled: true,
  // labelText: 'Search',
    prefixIcon: Icon(Icons.search, color: Colors.black),
    hintText: 'Search for movies',
    fillColor: Colors.white, 
  ),

             ), 
             const SizedBox(height: 10,), 
             const Text('Trending Movies', style: TextStyle(fontSize: 18, color: Colors.white),),
             const SizedBox(height: 10,), 
             Expanded(
               child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
                itemCount: videos.length,
                 itemBuilder: (context, index) => 
                  GestureDetector( 
                    onTap: () {
                      const PlayMyVideo(); 
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(videos[index].thumbnail))
                      ),
                      child: Column(
                        children: [
                          Text(videos[index].name),
                        ],
                      ),
                     ),
                  ), 
                 ),
             )
          ],
        ),
      ); 
    
  }
}


class PlayMyVideo extends StatefulWidget {
  const PlayMyVideo({super.key});

  @override
  State<PlayMyVideo> createState() => _PlayMyVideoState();
}

class _PlayMyVideoState extends State<PlayMyVideo> {

   late VideoPlayerController _controller; 
 int _currentIndex = 0;

 void _playVideo({int index = 0, bool init = false}){
   if(index <0 || index >= videos.length) return; 

   _controller = VideoPlayerController.networkUrl(
     videos[_currentIndex].url as Uri
   ) ..addListener(()=> setState(() {
    
   }))
   ..setLooping(true) 
   ..initialize().then((value) => _controller.play());
 }


   @override
   void initState() {
     _playVideo(init: true); 
     super.initState();
   }

   @override
   void dispose() {
    
     super.dispose();
     _controller.dispose();
   }
  
  @override
  Widget build(BuildContext context) {
    
  
    return Container(
      color: Colors.grey[300],
      height: double.infinity, width: double.infinity,
      child: _controller.value.isInitialized ?  Column(
        children: [
          SizedBox(
            height: 300,
            child: VideoPlayer(_controller),), 
            const SizedBox(height: 12,), 
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
ValueListenableBuilder(
  valueListenable: _controller,
   builder: (context, value, child) {
  return Text(
    _videoDuration(value.position), 
    style: const TextStyle(color: Colors.white, fontSize: 20),);
}), 

                Expanded(child: SizedBox(height: 20, child: VideoProgressIndicator(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                   _controller,
                    allowScrubbing: true),))
              ],
            )
        ],
      ) : Center( 
        child: CircularProgressIndicator(color: Colors.white,),
      ),
    );
  }
}