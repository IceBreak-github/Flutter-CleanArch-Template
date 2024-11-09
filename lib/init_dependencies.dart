import 'package:get_it/get_it.dart';
import 'package:template/core/common/cubits/app_settings/app_settings_cubit.dart';
import 'package:template/features/settings/data/database/database.dart';
import 'package:template/features/settings/domain/repository/settings_repository.dart';

import 'features/settings/domain/usecases/settings_get.dart';
import 'features/settings/domain/usecases/update_theme.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  //other stuff
  await _initSettings();
  //core
  serviceLocator.registerLazySingleton(() => AppSettingsCubit);
}

Future<void> _initSettings() async {   
  final settingsDatabase = SettingsDatabase();
  serviceLocator.registerLazySingleton(() => settingsDatabase);

  serviceLocator
    //Datasource
    //Repository
    //Usecases
    ..registerFactory(
      () => SettingsGetSettings(
        serviceLocator<SettingsRepository>()
      )
    )
    ..registerFactory(
      () => SettingsUpdateTheme(
        serviceLocator<SettingsRepository>()
      )
    );
    //Bloc, Cubit
}