import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import 'model/landing_model.dart';

class ShopLanding extends StatefulWidget {
  const ShopLanding({super.key});

  @override
  State<ShopLanding> createState() => _ShopLandingState();
}

class _ShopLandingState extends State<ShopLanding> {
  double scrollOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        title: const Text('Kitchen'),
        toolbarHeight: 30,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Search here..',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusColor: Colors.green,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Iconsax.gps,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Lekki, Lagos Nigeria'),
                ],
              ),
              const SizedBox(height: 18),
              // Set a fixed height for the grid to avoid infinite height issues
              SizedBox(
                height: 500, // Set an appropriate height for the grid
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2, // 2 columns in the grid
                  itemCount: demoLandings.length, // Number of items in the list
                  itemBuilder: (BuildContext context, int index) {
                    final landing = demoLandings[index];
                    return RestuarantCard(
                      title: landing.title,
                      image: landing.image,
                      onTap: () {
                        // Navigate to the respective route
                        if (landing.route.isNotEmpty) {
                          Navigator.pushNamed(context, landing.route);
                        }
                      },
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return const StaggeredTile.extent(1, 160); // Fixed height
                  },
                  mainAxisSpacing: 12.0, // Vertical space between grid items
                  crossAxisSpacing: 12.0, // Horizontal space between grid items
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset('assets/food/brand_company/banner.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestuarantCard extends StatelessWidget {
  const RestuarantCard({
    Key? key,
    required this.title,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final String title;
  final GestureTapCallback onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 160,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.7),
              Colors.transparent,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
