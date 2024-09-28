import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

import 'event.dart';
import 'msg.dart';
import 'search.dart';

class QuickActionsHome extends StatefulWidget {
  const QuickActionsHome({super.key});

  @override
  State<QuickActionsHome> createState() => _QuickActionsHomeState();
}

class _QuickActionsHomeState extends State<QuickActionsHome> {

  final  quickActions = const QuickActions(); 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    quickActions.setShortcutItems([
      const ShortcutItem(type: 'event', localizedTitle: 'New Event'), 
      const ShortcutItem(type: 'message', localizedTitle: 'New Message'), const ShortcutItem(type: 'search', localizedTitle: 'Search'), 
    ]);
    quickActions.initialize((type){
if (type == 'event'){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EventPage()), 
  ); 
}
  else if (type == 'message'){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MessagePage()), 
    ); 
  }
    else if (type == 'search'){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchPage()), 
      ); 
    }
    
  });
}

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Quick Actions', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}