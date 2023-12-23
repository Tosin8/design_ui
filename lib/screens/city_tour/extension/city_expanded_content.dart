import 'package:flutter/material.dart';

import '../model/location.dart';
import 'city_stars.dart';

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
         // buildAddressRating(location: location), 
         Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        Text(
          location.addressLine2, 
          style: const TextStyle(color: Colors.black45),
        ), 
        CityStars(stars: location.startRating), 
      ],
    ),
          SizedBox(height: 12), 
         // buildReview(location: location), 
         Row(
        children: location.reviews
            .map((review) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ))
            .toList(),
      ),
        ]
      ),
    );

    // ignore: dead_code
    // Widget buildAddressRating({

    //   required Location location, 
    // }) => Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween, 
    //   children: [
    //     Text(
    //       location.addressLine2, 
    //       style: const TextStyle(color: Colors.black45),
    //     ), 
        
    //   ],
    // ); 
  


// Widget buildReview({
//     required Location location,
//   }) =>
//       Row(
//         children: location.reviews
//             .map((review) => Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 4),
//                   child: CircleAvatar(
//                     radius: 16,
//                     backgroundColor: Colors.black12,
//                     backgroundImage: AssetImage(review.urlImage),
//                   ),
//                 ))
//             .toList(),
//       );
}}