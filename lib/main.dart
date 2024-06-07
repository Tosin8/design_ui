import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/tablet_scaffold.dart';

import 'screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/desktop_scaffold.dart';
import 'screens/dashboard/edu_dashboard/student_portal/responsive_layout/devices/mobile_scaffold.dart';
import 'screens/dashboard/edu_dashboard/student_portal/responsive_layout/responsivelayout.dart';




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
    home: const Responsivelayout(
      mobileScaffold: MobileView(),
      tabletScaffold: TabletViewL(),
      desktopScaffold: DesktopView(),
      ), 

    ); 
  }
}
