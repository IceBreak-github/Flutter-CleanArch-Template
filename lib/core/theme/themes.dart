import 'package:flutter/material.dart';
import 'package:template/core/common/entities/themes.dart';
import 'package:template/core/theme/app_sizes.dart';
import 'package:template/core/utils/string_to_color.dart';

class AppTheme {
  static TextStyle _textStyle(ThemesEntity theme, {required double fontSize, FontWeight fontWeight = FontWeight.w500}) => TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: theme.widgetColor.toColor(),
  );

  static _textTheme(ThemesEntity theme) => TextTheme(
    titleLarge: _textStyle(theme, fontSize: FontSizes.bigHeading, fontWeight: FontWeight.w600),
    titleMedium: _textStyle(theme, fontSize: FontSizes.heading, fontWeight: FontWeight.w600),
    titleSmall: _textStyle(theme, fontSize: FontSizes.medium, fontWeight: FontWeight.w600),
    bodyLarge: _textStyle(theme, fontSize: FontSizes.body),
    bodyMedium: _textStyle(theme, fontSize: FontSizes.small),
    bodySmall: _textStyle(theme, fontSize: FontSizes.smallest),
  );

  static ThemeData selectTheme(ThemesEntity theme) {
    return ThemeData(
      textTheme: _textTheme(theme),
    );
  }
}