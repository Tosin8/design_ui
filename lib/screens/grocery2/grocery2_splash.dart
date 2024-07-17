import 'dart:async';
import 'package:flutter/material.dart';
import 'grocery2_home.dart';

class Grocery2Splash extends StatefulWidget {
  const Grocery2Splash({super.key});

  @override
  State<Grocery2Splash> createState() => _Grocery2SplashState();
}

class _Grocery2SplashState extends State<Grocery2Splash> with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;
  late AnimationController fadeController;
  late Animation<double> fadeAnimation;
  late AnimationController textFadeController;
  late Animation<double> textFadeAnimation;

  bool showHomeScreen = false;

  @override
  void initState() {
    super.initState();
    
    scaleController = AnimationController(
      vsync: this, 
      duration: const Duration(milliseconds: 800),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          showHomeScreen = true;
        });
        fadeController.forward();
      }
    });

    scaleAnimation = CurvedAnimation(
      parent: scaleController, 
      curve: Curves.easeInOut,
    ).drive(Tween<double>(begin: 1, end: 50));

    fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.easeInOut,
    ).drive(Tween<double>(begin: 0, end: 1));

    textFadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    textFadeAnimation = CurvedAnimation(
      parent: textFadeController,
      curve: Curves.easeInOut,
    ).drive(Tween<double>(begin: 1, end: 0));
  }

  @override
  void dispose() {
    scaleController.dispose();
    fadeController.dispose();
    textFadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            if (!showHomeScreen)
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/grocery2/splash_main.jpg'), fit: BoxFit.cover),
                ),
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black38, Colors.transparent, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Right Taste', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500)),
                    const Text('The Right Taste for Every Belly', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400)),
                    const SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        textFadeController.forward();
                        scaleController.forward();
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedBuilder(
                            animation: scaleAnimation,
                            builder: (context, child) => Transform.scale(
                              scale: scaleAnimation.value,
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                          FadeTransition(
                            opacity: textFadeAnimation,
                            child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            if (showHomeScreen)
              FadeTransition(
                opacity: fadeAnimation,
                child: const Grocery2Home(),
              ),
            if (scaleController.isAnimating)
              AnimatedBuilder(
                animation: scaleAnimation,
                builder: (context, child) => Transform.scale(
                  scale: scaleAnimation.value,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AnimatingRoute extends PageRouteBuilder {
  final Widget route;

  AnimatingRoute({required this.route}) : super(
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) => route,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) => FadeTransition(opacity: animation, child: child),
  );
}
