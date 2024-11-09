import 'package:template/core/common/entities/themes.dart';

//defines what global app settings are up to user preference
class SettingsEntity {
  final ThemesEntity theme;
  
  const SettingsEntity({
    required this.theme
  });
}