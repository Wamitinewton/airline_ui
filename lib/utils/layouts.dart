import 'package:flutter/material.dart';

class LayOuts {
  static getTheme(BuildContext context) {
    return Theme.of(context);
  }

  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
