import 'package:flutter/material.dart';

class ZoomProvider extends ChangeNotifier {
  double _scale = 1.0; // Default 100%

  double get scale => _scale;

  void setScale(double value) {
    _scale = value;
    notifyListeners();
  }
}
