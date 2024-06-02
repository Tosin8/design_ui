// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  const Responsivelayout({
    Key? key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  }) : super(key: key);

final Widget mobileScaffold; 
final Widget tabletScaffold; 
final Widget desktopScaffold; 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) { return tabletScaffold; 
        } else { return desktopScaffold; }
      }); 
  }
}
