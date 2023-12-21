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
// exposing how many contacts it needs to hold on to.
int get length => _contacts.length; 

// Creating functions to add and remove contacts
void add({required Contact contact}) {
  _contacts.add(contact);
}

void remove({required Contact contact}) {
  _contacts.remove(contact);
}

// a function to retrieve contacts with index 
Contact? contact({required int atIndex})  => _contacts.length > atIndex ? _contacts[atIndex] : null; 
}
class VanillaHome extends StatelessWidget {
  const VanillaHome({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook(); 
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Contacts', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,),
        body: ListView.builder(itemBuilder: itemBuilder)
    );
  }
}