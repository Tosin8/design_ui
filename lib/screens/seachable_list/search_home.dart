import 'package:flutter/material.dart';

import 'model/user.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({super.key});

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
final List<User> _users =[

User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), 

  User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/a-man-looking-at-the-camera-bsNe8jk8tM0',
  isFollowedByMe: false),
   User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), User(
  name: 'Ellian Polacis', 
username: '@ellianpol',
 image: 'https://unsplash.com/photos/woman-in-white-turtleneck-sweater-DQjWG8NBGWg',
  isFollowedByMe: false), 

]; 
 List<User> _foundedUsers = []; 

@override
  void initState() {
    
    super.initState();
    setState(() {
      _foundedUsers = _users; 
    });
  }

  onSearch(String search){
    print(search); 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        appBar: AppBar(
          elevation: 0, 
          backgroundColor: Colors.grey.shade900, 
          title:  SizedBox(
            height: 38, 
            child: TextField(
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                
                filled: true, 
                fillColor: Colors.grey.shade800,
                contentPadding: const EdgeInsets.all(10),
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                border:  OutlineInputBorder(borderSide: BorderSide.none, 
                borderRadius: BorderRadius.circular(20), 
                ),
                hintStyle: TextStyle(
                  fontSize: 14, 
                  color: Colors.grey.shade500,
                ),
                hintText: 'Search Users'
              ),
            ),
          )
        ),
        body: Container(
          color: Colors.grey.shade900, 
          child: ListView.builder(
            itemCount: _foundedUsers.length,
            itemBuilder: (context , index) {
              return userComponent(user: _foundedUsers[index]); 
            }),
        )
      ),
    );
  }

  userComponent({required User user}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 60, 
                height: 60, 
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), 
                  child: Image.network(user.image),
                ),
              ),
           
          const SizedBox(width: 10,), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ), 
              const SizedBox(height: 5,), 
              Text(user.username, style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )
        ],
      ),
      GestureDetector(
        onTap: (){

          setState(() {
            user.isFollowedByMe = !user.isFollowedByMe; 
          });
        },
        child: AnimatedContainer(
          height: 35, 
          width: 110,
          duration: const Duration(
            milliseconds: 300), 
            decoration: BoxDecoration(
              color: user.isFollowedByMe ? Colors.blue[700] : const Color(0x00ffffff), 
              borderRadius: BorderRadius.circular(5), 
              border: Border.all(color: user.isFollowedByMe ? Colors.transparent : Colors.grey.shade700)
            ),
            child: Center(
              child: Text(user.isFollowedByMe ? 'Unfollow' : 'Follow', 
              style: TextStyle(
                color: user.isFollowedByMe ? Colors.white : Colors.grey[500]
              ),)),
        ),
      )
     ],
          ), 
    ); 
  }
}