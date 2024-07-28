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
final List<User> _foundedUsers = []; 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Container(
          color: Colors.grey.shade900
        )
      ),
    );
  }
}