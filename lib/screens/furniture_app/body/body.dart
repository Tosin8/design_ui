import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class FurnitureBody extends StatelessWidget {
  const FurnitureBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        backgroundColor: Colors.transparent,
        elevation: 0, 
        systemOverlayStyle: SystemUiOverlayStyle.light,
      leading: IconButton(onPressed: (){},
       icon: SvgPicture.asset(
        'assets/furniture/icons/menu.svg', 
        height: SizeConfig.defaultSize * 2,)),
       actions: [
        IconButton(onPressed: (){},
        icon: SvgPicture.asset('assets/furniture/icons/search.svg')),
        Center(
          child: Text('Scan', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),)
        )
       
       ],
      ),
      body: Container(
        child: Text('Hello')
      ),
    );
  }
}