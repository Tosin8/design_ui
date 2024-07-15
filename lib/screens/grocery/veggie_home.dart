// import 'package:flutter/material.dart';
// import 'package:ui_design/screens/grocery/constants/app_info.dart';
// import 'controllers/veggie_controller.dart';
// import 'model/product_model.dart';
// import 'model/veggie/home_header.dart';
// import 'model/veggie/veggie_productcard.dart';

// class VeggieHome extends StatelessWidget {
//   VeggieHome({super.key});
// final controller = VeggieController(); 

// void _onVerticalGesture(DragUpdateDetails details) {
//   if (details.primaryDelta! < -0.7) {
//     controller.changeVeggieState(VeggieState.cart);
//    // print('Up');
//   } else if (details.primaryDelta! > 12) {
//     controller.changeVeggieState(VeggieState.normal);
//   //  print('Down');
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         bottom: false,
//         child: Container(
//           color: const Color(0xFFEAEAEA),
//           child: AnimatedBuilder( 
//             animation: controller, 
// builder: (context, _) {
//             return LayoutBuilder(
//               builder: (context, BoxConstraints connstraints) {
                
              
//               return  Stack(
//                 children: [
                  
//                  AnimatedPositioned(
//                   duration: panelTransition,
//                     top: controller.veggieState == VeggieState.normal ? headerHeight: -500,
//                     left: 0,
//                     right: 0,
//                     height: connstraints.maxHeight - headerHeight - cartBarHeight, // Account for the height of the bottom bar
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(defaultPadding * 1.5),
//                           bottomRight: Radius.circular(defaultPadding * 1.5),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: GridView.builder(
//                               padding: const EdgeInsets.only(bottom: cartBarHeight), // Add padding to avoid overlap
//                               itemCount: veggie_products.length,
//                               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 2,
//                                 childAspectRatio: 0.75,
//                                 mainAxisSpacing: defaultPadding,
//                                 crossAxisSpacing: defaultPadding,
//                               ),
//                               itemBuilder: (context, index) => ProductCard(
//                                 product: veggie_products[index],
//                                 press: () {},
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     left: 0,
//                     right: 0,
//                     height: cartBarHeight,
//                     child: GestureDetector( 
//                       onVerticalDragUpdate: _onVerticalGesture, 
//                       child: Container(
//                         //color: Colors.grey, // Placeholder color, adjust as needed
//                         // Add content for the bottom bar here
//                       ),
//                     ),
//                   ),
//                   AnimatedPositioned(
//                     duration: panelTransition,
//                     top: controller.veggieState == VeggieState.normal
//                      ? 0
//                      : -headerHeight,
//                     right: 0,
//                     left: 0,
//                     height: headerHeight,
//                     child: const HomeHeader(),
//                   ),
//                 ],
//               ); 
//                 }  ); 
//   }),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/constants/app_info.dart';
import 'controllers/veggie_controller.dart';
import 'model/product_model.dart';
import 'model/veggie/home_header.dart';
import 'model/veggie/veggie_detail_screen.dart';
import 'model/veggie/veggie_productcard.dart';

class VeggieHome extends StatefulWidget {
  VeggieHome({super.key});

  @override
  _VeggieHomeState createState() => _VeggieHomeState();
}

class _VeggieHomeState extends State<VeggieHome> {
  final controller = VeggieController();
  final ScrollController _scrollController = ScrollController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeVeggieState(VeggieState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeVeggieState(VeggieState.normal);
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && controller.veggieState == VeggieState.normal) {
        controller.changeVeggieState(VeggieState.cart);
      } else if (_scrollController.offset <= 100 && controller.veggieState == VeggieState.cart) {
        controller.changeVeggieState(VeggieState.normal);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: const Color(0xFFEAEAEA),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              return LayoutBuilder(
                builder: (context, BoxConstraints constraints) {
                  return Stack(
                    children: [
                      AnimatedPositioned(
                        duration: panelTransition,
                        top: controller.veggieState == VeggieState.normal ? headerHeight 
                       // : 500 ,  
                        : -(constraints.maxHeight - cartBarHeight * 2 - headerHeight),
                        left: 0,
                        right: 0,
                        height: constraints.maxHeight - headerHeight - cartBarHeight, // Account for the height of the bottom bar
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: defaultPadding,
                            right: defaultPadding,
                            top: 16, // Add padding at the top
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(defaultPadding * 1.5),
                              bottomRight: Radius.circular(defaultPadding * 1.5),
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: GridView.builder(
                                  controller: _scrollController,
                                  padding: const EdgeInsets.only(bottom: cartBarHeight), // Add padding to avoid overlap
                                  itemCount: veggie_products.length,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.75,
                                    mainAxisSpacing: defaultPadding,
                                    crossAxisSpacing: defaultPadding,
                                  ),
                                  itemBuilder: (context, index) => ProductCard(
                                    product: veggie_products[index],
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => VeggieDetailScreen(
                                            product: veggie_products[index],
                                          ),
                                        ),
                                      ); 
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // card panel 
                     AnimatedPositioned(
                      duration: panelTransition,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        //height: cartBarHeight,
                        height: controller.veggieState == VeggieState.normal ? cartBarHeight
                        :  (constraints.maxHeight - cartBarHeight ),
                        //: 0,
                        child: GestureDetector(
                          onVerticalDragUpdate: _onVerticalGesture,
                          child: Container(
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: panelTransition,
                        top: controller.veggieState == VeggieState.normal ? 0 : -headerHeight,
                        right: 0,
                        left: 0,
                        height: headerHeight,
                        child: const HomeHeader(),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
