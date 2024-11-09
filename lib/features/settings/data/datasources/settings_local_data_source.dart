import 'package:template/features/settings/data/models/theme_model.dart';

import '../../../../core/theme/app_palettes.dart';
import '../database/database.dart';

abstract interface class SettingsLocalDataSource {
  SettingsDatabase get database;
  Future<ThemeModel> getSettings();
  Future<ThemeModel> updateTheme({
    required Palette newTheme
  });
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  @override
  final SettingsDatabase database;
  SettingsLocalDataSourceImpl(this.database);
  
  @override
  Future<ThemeModel> getSettings() {
    // TODO: implement getSettings
    throw UnimplementedError();
  }
  
  @override
  Future<ThemeModel> updateTheme({
    required Palette newTheme
  }) {
    // TODO: implement updateTheme
    throw UnimplementedError();
  }

  
}