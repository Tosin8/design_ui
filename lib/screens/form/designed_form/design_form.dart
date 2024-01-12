import 'package:flutter/material.dart';

class DesignForm extends StatefulWidget {
  const DesignForm({super.key});

  @override
  State<DesignForm> createState() => _DesignFormState();
}

final bkg = AssetImage('assets/form/1.jpg');
class _DesignFormState extends State<DesignForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: bkg)
        ),
      )
    );
  }
}