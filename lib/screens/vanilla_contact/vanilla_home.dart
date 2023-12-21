import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


// Creating class for Contact List
class Contact {
  final String id; 
  final String name;
   Contact( {
    required this.name, 
  }): id = const  Uuid().v4();
}

// Creating a Singleton of ContactBook, which is the _sharedInstance(), _shared and factor constructor. 
class ContactBook extends ValueNotifier<List<Contact>>{
  // extending Contact Book with ValueNotifier because the class only manages one instance which is the Db of the contact. 
  ContactBook._sharedInstance() : super([]); // creating a private constructor, then adding super constructor along the value Notifier. 
static final ContactBook _shared = ContactBook._sharedInstance(); 
factory ContactBook() => _shared; 

// CREATING A CONACTS STORAGE. 
final List<Contact> _contacts = [
  
];
// exposing how many contacts it needs to hold on to.
int get length => _contacts.length; 

// Creating functions to add and remove contacts
void add({required Contact contact}) {
 // _contacts.add(contact);
 final contacts = value; 
 contacts.add(contact);
 notifyListeners();
 //value.add(contact); // adding a private constructor, then adding super constructor along the value Notifier
}

void remove({required Contact contact}) {
  final contacts = value;
  if (contacts.contains(contact)){
    contacts.remove(contact);
    notifyListeners();
  }
 // _contacts.remove(contact);
}

// a function to retrieve contacts with index 
Contact? contact({required int atIndex})  => 
//_contacts.length > atIndex ? _contacts[atIndex] : null; 
value.length > atIndex ? value[atIndex]: null; 
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
        body: ListView.builder(
           itemCount: contactBook.length,
          itemBuilder: (context, index) {

            final contact = contactBook.contact(atIndex: index)!;
            return ListTile(
              title: Text(contact.name),
            );  
          }, 
         ), 

         // Creating way of adding new contacts
         floatingActionButton: FloatingActionButton(
          onPressed: () async{
            await 
          Navigator.of(context).pushNamed('/new-contact'); 
         },
         child: const Icon(Icons.add),
    ), 
    ); 
  }
}

// adding new contacts
class NewContactView extends StatefulWidget {
  const NewContactView({super.key});

  @override
  State<NewContactView> createState() => _NewContactViewState();
}

class _NewContactViewState extends State<NewContactView> {
late final TextEditingController _controller;

@override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    appBar: AppBar(
    title: const Text('Add a new contact'),
    ),
    body: Column(children: [
    TextField(
    controller: _controller, 
    decoration: const InputDecoration(
    hintText: 'Enter a new contact name here..'
    ),
    ),
    TextButton(
    onPressed: (){
    final contact = Contact(name: _controller.text);
    ContactBook().add(contact: contact);
    Navigator.of(context).pop(); 
    },
     child: Container(
      width: 120,height: 40,
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      child: const Align(
        child: Text('Save Contact', 
        style: TextStyle(
          color: Colors.white),
          )
          )
          ),
          )
    ],
    )
    );
  }
}

// Using ValueNotifier to notify the homepaage about changes to ContactBook. 