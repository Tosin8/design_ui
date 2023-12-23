import 'package:flutter/material.dart';

import '../model/location.dart';

class ExpandedContent extends StatelessWidget {
  final Location location; 
  const ExpandedContent({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(10), 
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, 
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Text(location.addressLine1), 
          SizedBox(height: 8,), 
          buildAddressRating(location: location), 
          SizedBox(height: 12), 
          buildReview(location: location)
        ],
      ),
    );
  }
}