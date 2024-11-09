import 'package:fpdart/src/either.dart';
import 'package:template/core/common/entities/settings.dart';
import 'package:template/core/error/failures.dart';
import 'package:template/core/theme/app_palettes.dart';
import 'package:template/features/settings/domain/repository/settings_repository.dart';

class SetttingsRepositoryImpl implements SettingsRepository {
  @override
  Future<Either<Failure, SettingsEntity>> getSettings() {
    // TODO: implement getSettings
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SettingsEntity>> updateTheme({
    required Palette newTheme
  }) {
    // TODO: implement updateTheme
    throw UnimplementedError();
  }
  
}