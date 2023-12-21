import 'package:flutter/material.dart';


// Creating class for Contact List
class Contact {
  final String name;
  const Contact({
    required this.name, 
  });
}

// Creating a Singleton of ContactBook, which is the _sharedInstance(), _shared and factor constructor. 
class ContactBook {
  ContactBook._sharedInstance(); // creating a private constructor. 
static final ContactBook _shared = ContactBook._sharedInstance(); 
factory ContactBook() => _shared; 

// CREATING A CONACTS STORAGE. 
final List<Contact> _contacts = [];
}
class VanillaHome extends StatelessWidget {
  const VanillaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}