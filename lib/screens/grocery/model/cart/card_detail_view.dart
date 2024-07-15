
import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/controllers/veggie_controller.dart';

import '../../constants/app_info.dart';
import 'cart_detail_view_card.dart';


class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final VeggieController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Next - \$30"),
            ),
          )
        ],
      ),
    );
  }
}