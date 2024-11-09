part of 'app_settings_cubit.dart';

final class AppSettingsState extends Equatable {
  final ThemeData appTheme;
  const AppSettingsState({required this.appTheme});

  @override
  List<Object?> get props => [appTheme];
}
