import 'package:flutter/material.dart';

import '../model/location.dart';


class CityLatLong extends StatelessWidget {
  final Location location;

  const CityLatLong({
    required this.location,
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            location.latitude,
            style: TextStyle(color: Colors.white70),
          ),
          Icon(Icons.location_on, color: Colors.white70),
          Text(
            location.longitude,
            style: TextStyle(color: Colors.white70),
          )
        ],
      );
}
