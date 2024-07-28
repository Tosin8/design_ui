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
          color: Colors.grey.shade900
        )
      ),
    );
  }
}