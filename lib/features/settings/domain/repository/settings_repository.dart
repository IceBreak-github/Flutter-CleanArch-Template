import 'package:fpdart/fpdart.dart';

import '../../../../core/common/entities/settings.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/theme/app_palettes.dart';

abstract interface class SettingsRepository {
  Future<Either<Failure, SettingsEntity>> getSettings();
  Future<Either<Failure, SettingsEntity>> updateTheme({
    required Palette newTheme
  });      //takes the new theme, and returns a new SettingsEntity with this new theme (or Failure message)
}