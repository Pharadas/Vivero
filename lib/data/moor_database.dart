import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Trees extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get treeid => text()();
  TextColumn get type => text().withLength(min: 1, max: 20)();
  TextColumn get ground => text().withLength(min: 1, max: 20)();
  TextColumn get trunk => text().withLength(min: 1, max: 20)();
  TextColumn get height => text()();
  TextColumn get top => text().withLength(min: 1, max: 20)();
  TextColumn get diameter => text()();
  TextColumn get longevity => text()();
  TextColumn get recolection => text().withLength(min: 1, max: 20)();
  TextColumn get spread => text().withLength(min: 1, max: 20)();
  TextColumn get seed => text().withLength(min: 1, max: 20)();
  TextColumn get seedtreatment => text().withLength(min: 1, max: 20)();
  DateTimeColumn get lastupdate => dateTime().nullable()();
  BoolColumn get deleted => boolean().withDefault(Constant(false))();
}

class Seeds extends Table {
  IntColumn get id2 => integer().autoIncrement()();
  TextColumn get  seedid => text()();
  TextColumn get seedtreatment => text().withLength(min: 1, max: 20)();
  TextColumn get seedtreatmentdescription => text().withLength(min: 1, max: 150)();
  DateTimeColumn get lastupdate => dateTime().nullable()();
  BoolColumn get deleted => boolean().withDefault(Constant(false))();
}

@UseMoor(tables: [Trees, Seeds])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db13.sqlite', logStatements: true));

    @override
    int get schemaVersion => 1;

    Future<List<Tree>> getAllTrees() => select(trees).get();
    Stream<List<Tree>> watchAllTrees() => select(trees).watch();
    Future insertTree(Tree tree) => into(trees).insert(tree);
    Future updateTree(Tree tree) => update(trees).replace(tree);
    Future deleteTree(Tree tree) => delete(trees).delete(tree);
    
    Future<List<Seed>> getAllSeeds() => select(seeds).get();
    Stream<List<Seed>> watchAllSeeds() => select(seeds).watch();
    Future insertSeed(Seed seed) => into(seeds).insert(seed);
    Future updateSeed(Seed seed) => update(seeds).replace(seed);
    Future deleteSeed(Seed seed) => delete(seeds).delete(seed);
}