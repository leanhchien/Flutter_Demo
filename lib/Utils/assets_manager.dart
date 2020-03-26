import 'package:flutter/cupertino.dart';

class Assert {
  static Image imageNamed(String name) {
    if (!name.endsWith('.png')) {
      name += '.png';
    }
    return Image.asset('assets/images/$name');
  }
}