import 'package:flutter/material.dart';

extension ColorExtension on String {
  Color toColor() {
    // Parses the string to create a Color
    return Color(int.parse(replaceAll("#", "0xff")));
  }
}