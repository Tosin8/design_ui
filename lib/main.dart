import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/coffee_shop/screen/splash.dart';
import 'package:ui_design/screens/discover_ui/discover.dart';
import 'package:ui_design/screens/furniture_app/splash.dart';
import 'package:ui_design/screens/grocery/grocery_home.dart';
import 'package:ui_design/screens/grocery/grocery_splash.dart';
import 'package:ui_design/screens/hommy/splash_screen.dart';
import 'package:ui_design/screens/nfc/views/home_view.dart';
import 'package:ui_design/screens/seachable_list/search_home.dart';
import 'package:ui_design/shots/list_slidable.dart';
import 'package:ui_design/shots/moviebox.dart';

import 'screens/grocery2/grocery2_splash.dart';
import 'screens/nfc/views/sender_views.dart';
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
    return GetMaterialApp( debugShowCheckedModeBanner: false, 
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    // home: const Responsivelayout(
    //   mobileScaffold: MobileView(),
    //   tabletScaffold: TabletViewL(),
    //   desktopScaffold: DesktopView(),
    //   ), 
home:  const HomeView()
    ); 
  }
}
