import 'package:flutter/material.dart';
import 'package:ui_design/screens/grocery/constants/app_info.dart';

import '../../constants/fav_btn.dart';
import '../product_model.dart';
import 'counter.dart';

class VeggieDetailScreen extends StatefulWidget {
  const VeggieDetailScreen({super.key, required this.product, required this.onProductAdd});

  final Product product; 
   final VoidCallback onProductAdd;

  @override
  State<VeggieDetailScreen> createState() => _VeggieDetailScreenState();
}

class _VeggieDetailScreenState extends State<VeggieDetailScreen> {
  String _cartTag = ""; 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: SafeArea(child: SizedBox(width: double.infinity,child: Padding(padding: const EdgeInsets.symmetric(horizontal: defaultPadding), 
      child: ElevatedButton(onPressed:() {

      widget.onProductAdd(); 
      setState(() {
        _cartTag = '_cartTag';
      });
      Navigator.pop(context);
      }, child: const Text('Add to Cart')),
      ),
      ), 
      ),
      backgroundColor: Colors.white, 
      appBar: AppBar(
         actions: [
        FavBtn(radius: 20),
        SizedBox(width: defaultPadding),
      ],
        title: const Text('Veggies'), centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ), 
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.37, 
            
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                width: double.infinity,
                color: const Color(0xFFEAEAEA),
                child: Hero(
                  tag: widget.product.title + _cartTag, 
                  child: Image.asset(widget.product.image,), 
                  ), 
                  ),
                  Positioned(
                    bottom: -20, 
                    child: CartCounter(), 
                    ) ,
              ],
            )), 
            const SizedBox(height: defaultPadding *  1.5), 
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.product.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text( "${widget.product.price}"),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              widget.product.description,
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                height: 1.8,
              ),
            ),
          ),
          
        ],
      )
    );
  }
}