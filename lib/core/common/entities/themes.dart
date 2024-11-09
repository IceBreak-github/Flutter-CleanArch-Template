import '../enums/themes_enums.dart';

class ThemesEntity {
  final String name;
  final PaletteType type;
  final String primaryColor;
  final String secondaryColor;
  final String widgetColor;
  final String backgroundColor;
  final String textColor;

  const ThemesEntity({
    required this.name, 
    required this.type, 
    required this.primaryColor, 
    required this.secondaryColor, 
    required this.widgetColor, 
    required this.backgroundColor, 
    required this.textColor
  });
  
}