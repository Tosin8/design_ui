import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'component/body.dart';

class FurnitureHome extends StatelessWidget {
  const FurnitureHome({super.key});

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
       // height: SizeConfig.defaultSize * 2,
       )),
       actions: [
        IconButton(onPressed: (){},
        icon: SvgPicture.asset('assets/furniture/icons/scan.svg')),
        const Center(
          child: Text('Scan', style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),)
        ), 
        const SizedBox(width: 10), 
       
       ],
      ),
      body: FurnitureBody(),
    );
  }
}

