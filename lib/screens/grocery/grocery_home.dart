import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_design/screens/grocery/model/category_model.dart';

import 'constants/custom_drawer.dart';
import 'model/category_card.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> items = ["Home", "Cart", "Wishlist", "Profile", "Notification"];
  final List<IconData> icons = [Icons.home, Icons.shopping_cart, Icons.favorite, Icons.account_circle, Icons.notifications];
  late AnimationController _animationController;
  String activeScreen = "Home";

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onItemTap(String screen) {
    setState(() {
      activeScreen = screen;
    });

    Navigator.pop(context);

    switch (screen) {
      case "Home":
        Navigator.push(context, MaterialPageRoute(builder: (context) => GroceryHome()));
        break;
      case "Cart":
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
        break;
      case "Wishlist":
        Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistPage()));
        break;
      case "Profile":
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
      case "Notification":
        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final categories = getCategories(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Iconsax.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        title: Row(
          children: [
            Image.asset('assets/grocery/logo.png', height: 40, width: 40,),
            const Text('FreshFetch', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),),
          ],
        ), 
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage('assets/grocery/grocery_app_banner.jpg'),
                      fit: BoxFit.contain,
                    )
                ),
              ),
            )),
      ),
      drawer: CustomDrawer(
        items: items,
        icons: icons,
        animationController: _animationController,
        activeScreen: activeScreen,
        onItemTap: _onItemTap,
      ),
      body: AnimationLimiter(
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 1200),
              columnCount: 2,
              child: SlideAnimation(
                curve: Curves.easeIn,
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: CategoryCard(
                    category: categories[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
