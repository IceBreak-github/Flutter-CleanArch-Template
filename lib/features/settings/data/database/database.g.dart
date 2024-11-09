// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ThemeTableTable extends ThemeTable
    with TableInfo<$ThemeTableTable, ThemeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ThemeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<PaletteType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<PaletteType>($ThemeTableTable.$convertertype);
  static const VerificationMeta _primaryColorMeta =
      const VerificationMeta('primaryColor');
  @override
  late final GeneratedColumn<String> primaryColor = GeneratedColumn<String>(
      'primary_color', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _secondaryColorMeta =
      const VerificationMeta('secondaryColor');
  @override
  late final GeneratedColumn<String> secondaryColor = GeneratedColumn<String>(
      'secondary_color', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _widgetColorMeta =
      const VerificationMeta('widgetColor');
  @override
  late final GeneratedColumn<String> widgetColor = GeneratedColumn<String>(
      'widget_color', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _backgroundColorMeta =
      const VerificationMeta('backgroundColor');
  @override
  late final GeneratedColumn<String> backgroundColor = GeneratedColumn<String>(
      'background_color', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        type,
        primaryColor,
        secondaryColor,
        widgetColor,
        backgroundColor
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'theme_table';
  @override
  VerificationContext validateIntegrity(Insertable<ThemeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('primary_color')) {
      context.handle(
          _primaryColorMeta,
          primaryColor.isAcceptableOrUnknown(
              data['primary_color']!, _primaryColorMeta));
    } else if (isInserting) {
      context.missing(_primaryColorMeta);
    }
    if (data.containsKey('secondary_color')) {
      context.handle(
          _secondaryColorMeta,
          secondaryColor.isAcceptableOrUnknown(
              data['secondary_color']!, _secondaryColorMeta));
    } else if (isInserting) {
      context.missing(_secondaryColorMeta);
    }
    if (data.containsKey('widget_color')) {
      context.handle(
          _widgetColorMeta,
          widgetColor.isAcceptableOrUnknown(
              data['widget_color']!, _widgetColorMeta));
    } else if (isInserting) {
      context.missing(_widgetColorMeta);
    }
    if (data.containsKey('background_color')) {
      context.handle(
          _backgroundColorMeta,
          backgroundColor.isAcceptableOrUnknown(
              data['background_color']!, _backgroundColorMeta));
    } else if (isInserting) {
      context.missing(_backgroundColorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ThemeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ThemeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $ThemeTableTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      primaryColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}primary_color'])!,
      secondaryColor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}secondary_color'])!,
      widgetColor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}widget_color'])!,
      backgroundColor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}background_color'])!,
    );
  }

  @override
  $ThemeTableTable createAlias(String alias) {
    return $ThemeTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<PaletteType, String, String> $convertertype =
      const EnumNameConverter<PaletteType>(PaletteType.values);
}

class ThemeTableData extends DataClass implements Insertable<ThemeTableData> {
  final int id;
  final String name;
  final PaletteType type;
  final String primaryColor;
  final String secondaryColor;
  final String widgetColor;
  final String backgroundColor;
  const ThemeTableData(
      {required this.id,
      required this.name,
      required this.type,
      required this.primaryColor,
      required this.secondaryColor,
      required this.widgetColor,
      required this.backgroundColor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    {
      map['type'] =
          Variable<String>($ThemeTableTable.$convertertype.toSql(type));
    }
    map['primary_color'] = Variable<String>(primaryColor);
    map['secondary_color'] = Variable<String>(secondaryColor);
    map['widget_color'] = Variable<String>(widgetColor);
    map['background_color'] = Variable<String>(backgroundColor);
    return map;
  }

  ThemeTableCompanion toCompanion(bool nullToAbsent) {
    return ThemeTableCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      primaryColor: Value(primaryColor),
      secondaryColor: Value(secondaryColor),
      widgetColor: Value(widgetColor),
      backgroundColor: Value(backgroundColor),
    );
  }

  factory ThemeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ThemeTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $ThemeTableTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      primaryColor: serializer.fromJson<String>(json['primaryColor']),
      secondaryColor: serializer.fromJson<String>(json['secondaryColor']),
      widgetColor: serializer.fromJson<String>(json['widgetColor']),
      backgroundColor: serializer.fromJson<String>(json['backgroundColor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($ThemeTableTable.$convertertype.toJson(type)),
      'primaryColor': serializer.toJson<String>(primaryColor),
      'secondaryColor': serializer.toJson<String>(secondaryColor),
      'widgetColor': serializer.toJson<String>(widgetColor),
      'backgroundColor': serializer.toJson<String>(backgroundColor),
    };
  }

  ThemeTableData copyWith(
          {int? id,
          String? name,
          PaletteType? type,
          String? primaryColor,
          String? secondaryColor,
          String? widgetColor,
          String? backgroundColor}) =>
      ThemeTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        primaryColor: primaryColor ?? this.primaryColor,
        secondaryColor: secondaryColor ?? this.secondaryColor,
        widgetColor: widgetColor ?? this.widgetColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
      );
  ThemeTableData copyWithCompanion(ThemeTableCompanion data) {
    return ThemeTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      primaryColor: data.primaryColor.present
          ? data.primaryColor.value
          : this.primaryColor,
      secondaryColor: data.secondaryColor.present
          ? data.secondaryColor.value
          : this.secondaryColor,
      widgetColor:
          data.widgetColor.present ? data.widgetColor.value : this.widgetColor,
      backgroundColor: data.backgroundColor.present
          ? data.backgroundColor.value
          : this.backgroundColor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ThemeTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('primaryColor: $primaryColor, ')
          ..write('secondaryColor: $secondaryColor, ')
          ..write('widgetColor: $widgetColor, ')
          ..write('backgroundColor: $backgroundColor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, primaryColor, secondaryColor,
      widgetColor, backgroundColor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ThemeTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.primaryColor == this.primaryColor &&
          other.secondaryColor == this.secondaryColor &&
          other.widgetColor == this.widgetColor &&
          other.backgroundColor == this.backgroundColor);
}

class ThemeTableCompanion extends UpdateCompanion<ThemeTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<PaletteType> type;
  final Value<String> primaryColor;
  final Value<String> secondaryColor;
  final Value<String> widgetColor;
  final Value<String> backgroundColor;
  const ThemeTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.primaryColor = const Value.absent(),
    this.secondaryColor = const Value.absent(),
    this.widgetColor = const Value.absent(),
    this.backgroundColor = const Value.absent(),
  });
  ThemeTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required PaletteType type,
    required String primaryColor,
    required String secondaryColor,
    required String widgetColor,
    required String backgroundColor,
  })  : name = Value(name),
        type = Value(type),
        primaryColor = Value(primaryColor),
        secondaryColor = Value(secondaryColor),
        widgetColor = Value(widgetColor),
        backgroundColor = Value(backgroundColor);
  static Insertable<ThemeTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? primaryColor,
    Expression<String>? secondaryColor,
    Expression<String>? widgetColor,
    Expression<String>? backgroundColor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (primaryColor != null) 'primary_color': primaryColor,
      if (secondaryColor != null) 'secondary_color': secondaryColor,
      if (widgetColor != null) 'widget_color': widgetColor,
      if (backgroundColor != null) 'background_color': backgroundColor,
    });
  }

  ThemeTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<PaletteType>? type,
      Value<String>? primaryColor,
      Value<String>? secondaryColor,
      Value<String>? widgetColor,
      Value<String>? backgroundColor}) {
    return ThemeTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      widgetColor: widgetColor ?? this.widgetColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($ThemeTableTable.$convertertype.toSql(type.value));
    }
    if (primaryColor.present) {
      map['primary_color'] = Variable<String>(primaryColor.value);
    }
    if (secondaryColor.present) {
      map['secondary_color'] = Variable<String>(secondaryColor.value);
    }
    if (widgetColor.present) {
      map['widget_color'] = Variable<String>(widgetColor.value);
    }
    if (backgroundColor.present) {
      map['background_color'] = Variable<String>(backgroundColor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ThemeTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('primaryColor: $primaryColor, ')
          ..write('secondaryColor: $secondaryColor, ')
          ..write('widgetColor: $widgetColor, ')
          ..write('backgroundColor: $backgroundColor')
          ..write(')'))
        .toString();
  }
}

abstract class _$SettingsDatabase extends GeneratedDatabase {
  _$SettingsDatabase(QueryExecutor e) : super(e);
  $SettingsDatabaseManager get managers => $SettingsDatabaseManager(this);
  late final $ThemeTableTable themeTable = $ThemeTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [themeTable];
}

typedef $$ThemeTableTableCreateCompanionBuilder = ThemeTableCompanion Function({
  Value<int> id,
  required String name,
  required PaletteType type,
  required String primaryColor,
  required String secondaryColor,
  required String widgetColor,
  required String backgroundColor,
});
typedef $$ThemeTableTableUpdateCompanionBuilder = ThemeTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<PaletteType> type,
  Value<String> primaryColor,
  Value<String> secondaryColor,
  Value<String> widgetColor,
  Value<String> backgroundColor,
});

class $$ThemeTableTableFilterComposer
    extends FilterComposer<_$SettingsDatabase, $ThemeTableTable> {
  $$ThemeTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<PaletteType, PaletteType, String> get type =>
      $state.composableBuilder(
          column: $state.table.type,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get primaryColor => $state.composableBuilder(
      column: $state.table.primaryColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get secondaryColor => $state.composableBuilder(
      column: $state.table.secondaryColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get widgetColor => $state.composableBuilder(
      column: $state.table.widgetColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get backgroundColor => $state.composableBuilder(
      column: $state.table.backgroundColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ThemeTableTableOrderingComposer
    extends OrderingComposer<_$SettingsDatabase, $ThemeTableTable> {
  $$ThemeTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get primaryColor => $state.composableBuilder(
      column: $state.table.primaryColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get secondaryColor => $state.composableBuilder(
      column: $state.table.secondaryColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get widgetColor => $state.composableBuilder(
      column: $state.table.widgetColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get backgroundColor => $state.composableBuilder(
      column: $state.table.backgroundColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ThemeTableTableTableManager extends RootTableManager<
    _$SettingsDatabase,
    $ThemeTableTable,
    ThemeTableData,
    $$ThemeTableTableFilterComposer,
    $$ThemeTableTableOrderingComposer,
    $$ThemeTableTableCreateCompanionBuilder,
    $$ThemeTableTableUpdateCompanionBuilder,
    (
      ThemeTableData,
      BaseReferences<_$SettingsDatabase, $ThemeTableTable, ThemeTableData>
    ),
    ThemeTableData,
    PrefetchHooks Function()> {
  $$ThemeTableTableTableManager(_$SettingsDatabase db, $ThemeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ThemeTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ThemeTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<PaletteType> type = const Value.absent(),
            Value<String> primaryColor = const Value.absent(),
            Value<String> secondaryColor = const Value.absent(),
            Value<String> widgetColor = const Value.absent(),
            Value<String> backgroundColor = const Value.absent(),
          }) =>
              ThemeTableCompanion(
            id: id,
            name: name,
            type: type,
            primaryColor: primaryColor,
            secondaryColor: secondaryColor,
            widgetColor: widgetColor,
            backgroundColor: backgroundColor,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required PaletteType type,
            required String primaryColor,
            required String secondaryColor,
            required String widgetColor,
            required String backgroundColor,
          }) =>
              ThemeTableCompanion.insert(
            id: id,
            name: name,
            type: type,
            primaryColor: primaryColor,
            secondaryColor: secondaryColor,
            widgetColor: widgetColor,
            backgroundColor: backgroundColor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ThemeTableTableProcessedTableManager = ProcessedTableManager<
    _$SettingsDatabase,
    $ThemeTableTable,
    ThemeTableData,
    $$ThemeTableTableFilterComposer,
    $$ThemeTableTableOrderingComposer,
    $$ThemeTableTableCreateCompanionBuilder,
    $$ThemeTableTableUpdateCompanionBuilder,
    (
      ThemeTableData,
      BaseReferences<_$SettingsDatabase, $ThemeTableTable, ThemeTableData>
    ),
    ThemeTableData,
    PrefetchHooks Function()>;

class $SettingsDatabaseManager {
  final _$SettingsDatabase _db;
  $SettingsDatabaseManager(this._db);
  $$ThemeTableTableTableManager get themeTable =>
      $$ThemeTableTableTableManager(_db, _db.themeTable);
}
