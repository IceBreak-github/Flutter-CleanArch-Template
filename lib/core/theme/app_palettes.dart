import 'package:flutter/material.dart';
import '../common/enums/themes_enums.dart';

abstract class Palette {        // Each theme has to implement this palette and its colors
  String get name;
  PaletteType get type;
  Color get primaryColor;
  Color get secondaryColor;
  Color get widgetColor;
  Color get backgroundColor;
  Color get textColor;
}

//Some default predefined themes
enum LightTheme implements Palette {        // Additionaly, you can pass colors from the constructor here if you want them to be changable by the user
  colors;

  @override
  String get name => "Light";
  @override
  PaletteType get type => PaletteType.light;
  @override
  Color get primaryColor => const Color(0xFFFFFFFF);
  @override
  Color get secondaryColor => const Color(0xFFFFFFFF);
  @override
  Color get widgetColor => const Color(0xFFFFFFFF);
  @override
  Color get backgroundColor => const Color(0xFFFFFFFF);
  @override
  Color get textColor => Colors.black;
}

enum DarkTheme implements Palette {
  colors;

  @override
  String get name => "Dark";
  @override
  PaletteType get type => PaletteType.dark;
  @override
  Color get primaryColor => const Color(0xFF000000);
  @override
  Color get secondaryColor => const Color(0xFF000000);
  @override
  Color get widgetColor => const Color(0xFF000000);
  @override
  Color get backgroundColor => const Color(0xFF000000);
  @override
  Color get textColor => Colors.white;
}

//For custom user Themes
class MyCustomTheme implements Palette{
  @override
  final String name;
  @override
  final PaletteType type;
  @override
  final Color primaryColor;
  @override 
  final Color secondaryColor;
  @override
  final Color widgetColor;
  @override
  final Color backgroundColor;
  @override
  final Color textColor;

  const MyCustomTheme({
    required this.name,
    required this.type,
    required this.primaryColor,
    required this.secondaryColor,
    required this.widgetColor,
    required this.backgroundColor,
    required this.textColor,
  });
}