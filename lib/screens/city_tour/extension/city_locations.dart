import 'package:flutter/material.dart';
import 'package:ui_design/screens/city_tour/data/data_location.dart';
import 'package:ui_design/screens/city_tour/model/location.dart';

class CityLocations extends StatefulWidget {
  const CityLocations({super.key, required Location location});

  @override
  State<CityLocations> createState() => _CityLocationsState();
}

class _CityLocationsState extends State<CityLocations> {

  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index]; 
              return CityLocations(location: location); 
          
        }, 
        onPageChanged: (index) =>  setState(() =>
          pageIndex = index), 
        
        )), 
        Text(
          '${pageIndex + 1} /${locations.length}', 
          style: TextStyle(color: Colors.white70),
        ), SizedBox(height: 12,)
      ],
    );
  }
}