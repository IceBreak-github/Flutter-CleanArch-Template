
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/core/common/entities/settings.dart';
import 'package:template/core/theme/themes.dart';

part 'app_settings_state.dart';

class AppSettingsCubit extends Cubit<AppSettingsState> {
  final SettingsEntity appSettings;
  AppSettingsCubit({required this.appSettings}) : super(AppSettingsState(
    appTheme: AppTheme.selectTheme(appSettings.theme),
  )); 
}
