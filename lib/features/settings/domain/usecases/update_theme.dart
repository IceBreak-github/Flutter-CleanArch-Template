import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/common/entities/settings.dart';
import '../../../../core/common/enums/themes_enums.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/theme/app_palettes.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/settings_repository.dart';

class SettingsUpdateTheme implements UseCase<SettingsEntity, ThemeParams> {
  final SettingsRepository settingsRepository;
  const SettingsUpdateTheme(this.settingsRepository);

  @override
  Future<Either<Failure, SettingsEntity>> call(ThemeParams params) async {
    return await settingsRepository.updateTheme(
      newTheme: MyCustomTheme(
        name: params.name,
        type: params.type,
        primaryColor: params.primaryColor,
        secondaryColor: params.secondaryColor,
        widgetColor: params.widgetColor,
        backgroundColor: params.backgroundColor,
        textColor: params.textColor,
      ),
    );
  }
}

class ThemeParams {
  final String name;
  final PaletteType type;
  final Color primaryColor;
  final Color secondaryColor;
  final Color widgetColor;
  final Color backgroundColor;
  final Color textColor;

  const ThemeParams({
    required this.name,
    required this.type,
    required this.primaryColor,
    required this.secondaryColor,
    required this.widgetColor,
    required this.backgroundColor,
    required this.textColor,
  });
}