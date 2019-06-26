// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Task extends DataClass {
  final int id;
  final String name;
  final DateTime dueData;
  final bool comleted;
  Task({this.id, this.name, this.dueData, this.comleted});
  factory Task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Task(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      dueData: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}due_data']),
      comleted:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}comleted']),
    );
  }
  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Task(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      dueData: serializer.fromJson<DateTime>(json['dueData']),
      comleted: serializer.fromJson<bool>(json['comleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'dueData': serializer.toJson<DateTime>(dueData),
      'comleted': serializer.toJson<bool>(comleted),
    };
  }

  Task copyWith({int id, String name, DateTime dueData, bool comleted}) => Task(
        id: id ?? this.id,
        name: name ?? this.name,
        dueData: dueData ?? this.dueData,
        comleted: comleted ?? this.comleted,
      );
  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('dueData: $dueData, ')
          ..write('comleted: $comleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      $mrjc($mrjc($mrjc(0, id.hashCode), name.hashCode), dueData.hashCode),
      comleted.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == id &&
          other.name == name &&
          other.dueData == dueData &&
          other.comleted == comleted);
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasksTable(this._db, [this._alias]);
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false, hasAutoIncrement: true);
  }

  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  GeneratedDateTimeColumn _dueData;
  @override
  GeneratedDateTimeColumn get dueData => _dueData ??= _constructDueData();
  GeneratedDateTimeColumn _constructDueData() {
    return GeneratedDateTimeColumn(
      'due_data',
      $tableName,
      true,
    );
  }

  GeneratedBoolColumn _comleted;
  @override
  GeneratedBoolColumn get comleted => _comleted ??= _constructComleted();
  GeneratedBoolColumn _constructComleted() {
    return GeneratedBoolColumn('comleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, dueData, comleted];
  @override
  $TasksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasks';
  @override
  final String actualTableName = 'tasks';
  @override
  bool validateIntegrity(Task instance, bool isInserting) =>
      id.isAcceptableValue(instance.id, isInserting) &&
      name.isAcceptableValue(instance.name, isInserting) &&
      dueData.isAcceptableValue(instance.dueData, isInserting) &&
      comleted.isAcceptableValue(instance.comleted, isInserting);
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(Task d, {bool includeNulls = false}) {
    final map = <String, Variable>{};
    if (d.id != null || includeNulls) {
      map['id'] = Variable<int, IntType>(d.id);
    }
    if (d.name != null || includeNulls) {
      map['name'] = Variable<String, StringType>(d.name);
    }
    if (d.dueData != null || includeNulls) {
      map['due_data'] = Variable<DateTime, DateTimeType>(d.dueData);
    }
    if (d.comleted != null || includeNulls) {
      map['comleted'] = Variable<bool, BoolType>(d.comleted);
    }
    return map;
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $TasksTable _tasks;
  $TasksTable get tasks => _tasks ??= $TasksTable(this);
  @override
  List<TableInfo> get allTables => [tasks];
}
