import 'package:flutter/material.dart';
import 'package:ui_design/shots/list_slidable.dart';
import 'package:ui_design/shots/moviebox.dart';

import 'shots/direct_phonecall.dart';




// USING GETX STATE MANAGEMENT. 

// void main() async {
//   runApp( const MyApp()); 
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp( debugShowCheckedModeBanner: false, 
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: const MinimalSplash (), 

//     ); 
//   }
// }

// USING PROVIDER STATE MANAGEMENT. 

// void main()  {
//   runApp( 
//     ChangeNotifierProvider( 
//       create: (context) => Shop(),
//    child:  const MyApp())); 
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp( debugShowCheckedModeBanner: false, 
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//     ),
//     home: const DashboardHome(), 

//     ); 
//   }
// }


void main()  {
  runApp( 
    
    const MyApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false, 
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    // home: const Responsivelayout(
    //   mobileScaffold: MobileView(),
    //   tabletScaffold: TabletViewL(),
    //   desktopScaffold: DesktopView(),
    //   ), 
home: const Moviebox()
    ); 
  }
}
