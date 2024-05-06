import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CappcuinoScreen extends StatelessWidget {
  const CappcuinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
      ),
    );
  }
}