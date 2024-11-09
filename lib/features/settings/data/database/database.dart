import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../../../core/common/enums/themes_enums.dart';

part 'database.g.dart';

class ThemeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 6, max: 32)();
  TextColumn get type => textEnum<PaletteType>()();
  TextColumn get primaryColor => text().withLength(min: 6, max: 6)();    
  TextColumn get secondaryColor => text().withLength(min: 6, max: 6)();
  TextColumn get widgetColor => text().withLength(min: 6, max: 6)();
  TextColumn get backgroundColor => text().withLength(min: 6, max: 6)();
}

@DriftDatabase(tables: [ThemeTable])
  class SettingsDatabase extends _$SettingsDatabase {

  SettingsDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'settings_database');
  }
}