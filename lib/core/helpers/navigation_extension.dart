import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void push(String routeName) {
    Navigator.pushNamed(this, routeName);
    
  }

  void pushReplacement(String routeName) {
    Navigator.pushReplacementNamed(this, routeName);
  }

  void pop() {
    Navigator.pop(this);
  }
}
