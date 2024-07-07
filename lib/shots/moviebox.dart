import 'package:flutter/material.dart';
import 'package:ui_design/shots/data/moviebox.dart';
import 'package:video_player/video_player.dart';

class Moviebox extends StatefulWidget {
  const Moviebox({super.key});

  @override
  State<Moviebox> createState() => _MovieboxState();
}

class _MovieboxState extends State<Moviebox> {
late VideoPlayerController _controller; 

void _playVideo({int index = 0, bool init = false}){
  if(index <0 || index >= videos.length) return; 

  _controller = VideoPlayerController.network(); 
}


  @override
  void initState() {
    _playVideo(init: true); 
    super.initState();
  }
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
                  Container(
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
             )
          ],
        ),
      ); 
    
  }
}

