// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/grocery2/grocery2_detail.dart';

import 'model/product_model.dart';

class Grocery2Home extends StatefulWidget {
  const Grocery2Home({super.key});

  @override
  _Grocery2HomeState createState() => _Grocery2HomeState();
}

class _Grocery2HomeState extends State<Grocery2Home> with TickerProviderStateMixin {
  late ScrollController _scrollController;
  double scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          scrollOffset = _scrollController.offset;
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  double calculateRotation(int index) {
    return (scrollOffset - index * 270) / 270;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.menu5,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.notification,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.user,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Good food\nFast Delivery',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryTitle(
                    title: 'All',
                    active: true,
                  ),
                  CategoryTitle(
                    title: 'Chicken',
                  ),
                  CategoryTitle(
                    title: 'Burgers',
                  ),
                  CategoryTitle(
                    title: 'Salad',
                  ),
                  CategoryTitle(
                    title: 'Fruits',
                  ),
                  CategoryTitle(
                    title: 'Jollof rice',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Popular Now',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 400, // Define a fixed height for the ListView
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: groceryproducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    groceryproduct: groceryproducts[index],
                    rotationAngle: calculateRotation(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final GroceryProduct groceryproduct;
  final double rotationAngle;

  const ProductCard({
    super.key,
    required this.groceryproduct,
    required this.rotationAngle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => Grocery2Detail(groceryproduct: groceryproduct)));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15), // Add margin for spacing
        height: 400,
        width: 270,
        child: Stack(
          children: [
            // big light background
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(120),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(120),
                  ),
                  color: Colors.white.withOpacity(0.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 180),
                      Text(
                        groceryproduct.name,
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        groceryproduct.description,
                        style: const TextStyle(color: Colors.grey, fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${groceryproduct.price}',
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            groceryproduct.weight,
                            style: const TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // foreground
            Positioned(
              top: -200,
              left: -20,
              right: -20,
              bottom: 20,
              child: Transform.rotate(
                angle: rotationAngle,
                // child: Container(
                //   height: 500,
                //   width: 500,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(groceryproduct.image),
                //     ),
                //   ),
                // ),
                child: Hero(
                  tag: groceryproduct.image,
                  child: Image.asset(
                    groceryproduct.image,
                  ),
                ), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key? key,
    required this.title,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Text(
        title,
        style: TextStyle(
          color: active ? Colors.white : Colors.grey,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
