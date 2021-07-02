import 'package:flutter/material.dart';

class Responsive {
  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
