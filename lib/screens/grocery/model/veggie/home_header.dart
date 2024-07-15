// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class HomeHeader extends StatelessWidget {
//   const HomeHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       appBar: AppBar(
        
//         elevation: 0, 
//        automaticallyImplyLeading: false,
//        bottom:  PreferredSize(
//         preferredSize: const Size.fromHeight(30),
//         child: Row(
//           children: [
//             IconButton(onPressed: (){
//               Navigator.pop(context); 
//             }, icon: const Icon(Icons.arrow_back_ios)), 
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [Text('FreshFetch', style: TextStyle(color: Colors.green, fontWeight: FontWeight.normal, fontSize: 16),), 
//               Text('Fruit & Veggies',
//                style: TextStyle(color: Colors.grey, fontSize: 18),
//                )],
//               ),
//             const Spacer(),
//             IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification)), // replace it with the search button. 
//           ],
//         ),), 
    
//       ), 
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (_isSearching) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Row(
            children: [
              if (!_isSearching)
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              if (!_isSearching)
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FreshFetch',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Fruit & Veggies',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              const Spacer(),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16 * _animation.value),
                      child: Row(
                        children: [
                          Expanded(
                            child: _isSearching
                                ? TextField(
                                    decoration: const InputDecoration(
                                      hintText: 'Search...',
                                      border: InputBorder.none,
                                    ),
                                  )
                                : Container(),
                          ),
                          IconButton(
                            onPressed: _toggleSearch,
                            icon: Icon(_isSearching ? Icons.close : Iconsax.search_normal),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
