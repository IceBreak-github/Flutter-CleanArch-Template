import 'package:fpdart/fpdart.dart';

import '../../../../core/common/entities/settings.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/settings_repository.dart';


class SettingsGetSettings implements UseCase<SettingsEntity, NoParams> {
  final SettingsRepository settingsRepository;
  const SettingsGetSettings(this.settingsRepository);

  @override
  Future<Either<Failure, SettingsEntity>> call(Object params) async {
    return await settingsRepository.getSettings();
  }
}