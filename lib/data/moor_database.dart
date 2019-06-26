import "package:moor_flutter/moor_flutter.dart";

part 'moor_database.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  DateTimeColumn get dueData => dateTime().nullable()();
  BoolColumn get comleted => boolean().withDefault(Constant(false))();
}
