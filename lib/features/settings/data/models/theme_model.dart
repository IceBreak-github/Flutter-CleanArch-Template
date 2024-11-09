import '../../../../core/common/entities/themes.dart';
import '../../../../core/common/enums/themes_enums.dart';


class ThemeModel extends ThemesEntity {
  ThemeModel({
    required super.name, 
    required super.type, 
    required super.primaryColor, 
    required super.secondaryColor, 
    required super.widgetColor, 
    required super.backgroundColor, 
    required super.textColor
  });
  
  ThemeModel copyWith({
    String? name,
    PaletteType? type,
    String? primaryColor,
    String? secondaryColor,
    String? widgetColor,
    String? backgroundColor,
    String? textColor,
  }) {
    return ThemeModel(
      name: name ?? this.name,
      type: type ?? this.type,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      widgetColor: widgetColor ?? this.widgetColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }
}