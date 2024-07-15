import 'package:flutter/material.dart';

enum VeggieState { normal, cart }

class VeggieController extends ChangeNotifier {
  VeggieState veggieState = VeggieState.normal;

  void changeVeggieState(VeggieState state) {
    veggieState = state;
    notifyListeners();
  }
}