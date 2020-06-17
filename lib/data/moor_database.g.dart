// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Tree extends DataClass implements Insertable<Tree> {
  final int id;
  final String treeid;
  final String type;
  final String ground;
  final String trunk;
  final String height;
  final String top;
  final String diameter;
  final String longevity;
  final String recolection;
  final String spread;
  final String seed;
  final String seedtreatment;
  final DateTime lastupdate;
  final bool deleted;
  Tree(
      {@required this.id,
      @required this.treeid,
      @required this.type,
      @required this.ground,
      @required this.trunk,
      @required this.height,
      @required this.top,
      @required this.diameter,
      @required this.longevity,
      @required this.recolection,
      @required this.spread,
      @required this.seed,
      @required this.seedtreatment,
      this.lastupdate,
      @required this.deleted});
  factory Tree.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Tree(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      treeid:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}treeid']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      ground:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}ground']),
      trunk:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}trunk']),
      height:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}height']),
      top: stringType.mapFromDatabaseResponse(data['${effectivePrefix}top']),
      diameter: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}diameter']),
      longevity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}longevity']),
      recolection: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}recolection']),
      spread:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}spread']),
      seed: stringType.mapFromDatabaseResponse(data['${effectivePrefix}seed']),
      seedtreatment: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}seedtreatment']),
      lastupdate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}lastupdate']),
      deleted:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deleted']),
    );
  }
  factory Tree.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Tree(
      id: serializer.fromJson<int>(json['id']),
      treeid: serializer.fromJson<String>(json['treeid']),
      type: serializer.fromJson<String>(json['type']),
      ground: serializer.fromJson<String>(json['ground']),
      trunk: serializer.fromJson<String>(json['trunk']),
      height: serializer.fromJson<String>(json['height']),
      top: serializer.fromJson<String>(json['top']),
      diameter: serializer.fromJson<String>(json['diameter']),
      longevity: serializer.fromJson<String>(json['longevity']),
      recolection: serializer.fromJson<String>(json['recolection']),
      spread: serializer.fromJson<String>(json['spread']),
      seed: serializer.fromJson<String>(json['seed']),
      seedtreatment: serializer.fromJson<String>(json['seedtreatment']),
      lastupdate: serializer.fromJson<DateTime>(json['lastupdate']),
      deleted: serializer.fromJson<bool>(json['deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'treeid': serializer.toJson<String>(treeid),
      'type': serializer.toJson<String>(type),
      'ground': serializer.toJson<String>(ground),
      'trunk': serializer.toJson<String>(trunk),
      'height': serializer.toJson<String>(height),
      'top': serializer.toJson<String>(top),
      'diameter': serializer.toJson<String>(diameter),
      'longevity': serializer.toJson<String>(longevity),
      'recolection': serializer.toJson<String>(recolection),
      'spread': serializer.toJson<String>(spread),
      'seed': serializer.toJson<String>(seed),
      'seedtreatment': serializer.toJson<String>(seedtreatment),
      'lastupdate': serializer.toJson<DateTime>(lastupdate),
      'deleted': serializer.toJson<bool>(deleted),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Tree>>(bool nullToAbsent) {
    return TreesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      treeid:
          treeid == null && nullToAbsent ? const Value.absent() : Value(treeid),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      ground:
          ground == null && nullToAbsent ? const Value.absent() : Value(ground),
      trunk:
          trunk == null && nullToAbsent ? const Value.absent() : Value(trunk),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      top: top == null && nullToAbsent ? const Value.absent() : Value(top),
      diameter: diameter == null && nullToAbsent
          ? const Value.absent()
          : Value(diameter),
      longevity: longevity == null && nullToAbsent
          ? const Value.absent()
          : Value(longevity),
      recolection: recolection == null && nullToAbsent
          ? const Value.absent()
          : Value(recolection),
      spread:
          spread == null && nullToAbsent ? const Value.absent() : Value(spread),
      seed: seed == null && nullToAbsent ? const Value.absent() : Value(seed),
      seedtreatment: seedtreatment == null && nullToAbsent
          ? const Value.absent()
          : Value(seedtreatment),
      lastupdate: lastupdate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastupdate),
      deleted: deleted == null && nullToAbsent
          ? const Value.absent()
          : Value(deleted),
    ) as T;
  }

  Tree copyWith(
          {int id,
          String treeid,
          String type,
          String ground,
          String trunk,
          String height,
          String top,
          String diameter,
          String longevity,
          String recolection,
          String spread,
          String seed,
          String seedtreatment,
          DateTime lastupdate,
          bool deleted}) =>
      Tree(
        id: id ?? this.id,
        treeid: treeid ?? this.treeid,
        type: type ?? this.type,
        ground: ground ?? this.ground,
        trunk: trunk ?? this.trunk,
        height: height ?? this.height,
        top: top ?? this.top,
        diameter: diameter ?? this.diameter,
        longevity: longevity ?? this.longevity,
        recolection: recolection ?? this.recolection,
        spread: spread ?? this.spread,
        seed: seed ?? this.seed,
        seedtreatment: seedtreatment ?? this.seedtreatment,
        lastupdate: lastupdate ?? this.lastupdate,
        deleted: deleted ?? this.deleted,
      );
  @override
  String toString() {
    return (StringBuffer('Tree(')
          ..write('id: $id, ')
          ..write('treeid: $treeid, ')
          ..write('type: $type, ')
          ..write('ground: $ground, ')
          ..write('trunk: $trunk, ')
          ..write('height: $height, ')
          ..write('top: $top, ')
          ..write('diameter: $diameter, ')
          ..write('longevity: $longevity, ')
          ..write('recolection: $recolection, ')
          ..write('spread: $spread, ')
          ..write('seed: $seed, ')
          ..write('seedtreatment: $seedtreatment, ')
          ..write('lastupdate: $lastupdate, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          treeid.hashCode,
          $mrjc(
              type.hashCode,
              $mrjc(
                  ground.hashCode,
                  $mrjc(
                      trunk.hashCode,
                      $mrjc(
                          height.hashCode,
                          $mrjc(
                              top.hashCode,
                              $mrjc(
                                  diameter.hashCode,
                                  $mrjc(
                                      longevity.hashCode,
                                      $mrjc(
                                          recolection.hashCode,
                                          $mrjc(
                                              spread.hashCode,
                                              $mrjc(
                                                  seed.hashCode,
                                                  $mrjc(
                                                      seedtreatment.hashCode,
                                                      $mrjc(
                                                          lastupdate.hashCode,
                                                          deleted
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Tree &&
          other.id == id &&
          other.treeid == treeid &&
          other.type == type &&
          other.ground == ground &&
          other.trunk == trunk &&
          other.height == height &&
          other.top == top &&
          other.diameter == diameter &&
          other.longevity == longevity &&
          other.recolection == recolection &&
          other.spread == spread &&
          other.seed == seed &&
          other.seedtreatment == seedtreatment &&
          other.lastupdate == lastupdate &&
          other.deleted == deleted);
}

class TreesCompanion extends UpdateCompanion<Tree> {
  final Value<int> id;
  final Value<String> treeid;
  final Value<String> type;
  final Value<String> ground;
  final Value<String> trunk;
  final Value<String> height;
  final Value<String> top;
  final Value<String> diameter;
  final Value<String> longevity;
  final Value<String> recolection;
  final Value<String> spread;
  final Value<String> seed;
  final Value<String> seedtreatment;
  final Value<DateTime> lastupdate;
  final Value<bool> deleted;
  const TreesCompanion({
    this.id = const Value.absent(),
    this.treeid = const Value.absent(),
    this.type = const Value.absent(),
    this.ground = const Value.absent(),
    this.trunk = const Value.absent(),
    this.height = const Value.absent(),
    this.top = const Value.absent(),
    this.diameter = const Value.absent(),
    this.longevity = const Value.absent(),
    this.recolection = const Value.absent(),
    this.spread = const Value.absent(),
    this.seed = const Value.absent(),
    this.seedtreatment = const Value.absent(),
    this.lastupdate = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  TreesCompanion copyWith(
      {Value<int> id,
      Value<String> treeid,
      Value<String> type,
      Value<String> ground,
      Value<String> trunk,
      Value<String> height,
      Value<String> top,
      Value<String> diameter,
      Value<String> longevity,
      Value<String> recolection,
      Value<String> spread,
      Value<String> seed,
      Value<String> seedtreatment,
      Value<DateTime> lastupdate,
      Value<bool> deleted}) {
    return TreesCompanion(
      id: id ?? this.id,
      treeid: treeid ?? this.treeid,
      type: type ?? this.type,
      ground: ground ?? this.ground,
      trunk: trunk ?? this.trunk,
      height: height ?? this.height,
      top: top ?? this.top,
      diameter: diameter ?? this.diameter,
      longevity: longevity ?? this.longevity,
      recolection: recolection ?? this.recolection,
      spread: spread ?? this.spread,
      seed: seed ?? this.seed,
      seedtreatment: seedtreatment ?? this.seedtreatment,
      lastupdate: lastupdate ?? this.lastupdate,
      deleted: deleted ?? this.deleted,
    );
  }
}

class $TreesTable extends Trees with TableInfo<$TreesTable, Tree> {
  final GeneratedDatabase _db;
  final String _alias;
  $TreesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _treeidMeta = const VerificationMeta('treeid');
  GeneratedTextColumn _treeid;
  @override
  GeneratedTextColumn get treeid => _treeid ??= _constructTreeid();
  GeneratedTextColumn _constructTreeid() {
    return GeneratedTextColumn(
      'treeid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn('type', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _groundMeta = const VerificationMeta('ground');
  GeneratedTextColumn _ground;
  @override
  GeneratedTextColumn get ground => _ground ??= _constructGround();
  GeneratedTextColumn _constructGround() {
    return GeneratedTextColumn('ground', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _trunkMeta = const VerificationMeta('trunk');
  GeneratedTextColumn _trunk;
  @override
  GeneratedTextColumn get trunk => _trunk ??= _constructTrunk();
  GeneratedTextColumn _constructTrunk() {
    return GeneratedTextColumn('trunk', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _heightMeta = const VerificationMeta('height');
  GeneratedTextColumn _height;
  @override
  GeneratedTextColumn get height => _height ??= _constructHeight();
  GeneratedTextColumn _constructHeight() {
    return GeneratedTextColumn(
      'height',
      $tableName,
      false,
    );
  }

  final VerificationMeta _topMeta = const VerificationMeta('top');
  GeneratedTextColumn _top;
  @override
  GeneratedTextColumn get top => _top ??= _constructTop();
  GeneratedTextColumn _constructTop() {
    return GeneratedTextColumn('top', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _diameterMeta = const VerificationMeta('diameter');
  GeneratedTextColumn _diameter;
  @override
  GeneratedTextColumn get diameter => _diameter ??= _constructDiameter();
  GeneratedTextColumn _constructDiameter() {
    return GeneratedTextColumn(
      'diameter',
      $tableName,
      false,
    );
  }

  final VerificationMeta _longevityMeta = const VerificationMeta('longevity');
  GeneratedTextColumn _longevity;
  @override
  GeneratedTextColumn get longevity => _longevity ??= _constructLongevity();
  GeneratedTextColumn _constructLongevity() {
    return GeneratedTextColumn(
      'longevity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _recolectionMeta =
      const VerificationMeta('recolection');
  GeneratedTextColumn _recolection;
  @override
  GeneratedTextColumn get recolection =>
      _recolection ??= _constructRecolection();
  GeneratedTextColumn _constructRecolection() {
    return GeneratedTextColumn('recolection', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _spreadMeta = const VerificationMeta('spread');
  GeneratedTextColumn _spread;
  @override
  GeneratedTextColumn get spread => _spread ??= _constructSpread();
  GeneratedTextColumn _constructSpread() {
    return GeneratedTextColumn('spread', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _seedMeta = const VerificationMeta('seed');
  GeneratedTextColumn _seed;
  @override
  GeneratedTextColumn get seed => _seed ??= _constructSeed();
  GeneratedTextColumn _constructSeed() {
    return GeneratedTextColumn('seed', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _seedtreatmentMeta =
      const VerificationMeta('seedtreatment');
  GeneratedTextColumn _seedtreatment;
  @override
  GeneratedTextColumn get seedtreatment =>
      _seedtreatment ??= _constructSeedtreatment();
  GeneratedTextColumn _constructSeedtreatment() {
    return GeneratedTextColumn('seedtreatment', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _lastupdateMeta = const VerificationMeta('lastupdate');
  GeneratedDateTimeColumn _lastupdate;
  @override
  GeneratedDateTimeColumn get lastupdate =>
      _lastupdate ??= _constructLastupdate();
  GeneratedDateTimeColumn _constructLastupdate() {
    return GeneratedDateTimeColumn(
      'lastupdate',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  GeneratedBoolColumn _deleted;
  @override
  GeneratedBoolColumn get deleted => _deleted ??= _constructDeleted();
  GeneratedBoolColumn _constructDeleted() {
    return GeneratedBoolColumn('deleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        treeid,
        type,
        ground,
        trunk,
        height,
        top,
        diameter,
        longevity,
        recolection,
        spread,
        seed,
        seedtreatment,
        lastupdate,
        deleted
      ];
  @override
  $TreesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'trees';
  @override
  final String actualTableName = 'trees';
  @override
  VerificationContext validateIntegrity(TreesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.treeid.present) {
      context.handle(
          _treeidMeta, treeid.isAcceptableValue(d.treeid.value, _treeidMeta));
    } else if (treeid.isRequired && isInserting) {
      context.missing(_treeidMeta);
    }
    if (d.type.present) {
      context.handle(
          _typeMeta, type.isAcceptableValue(d.type.value, _typeMeta));
    } else if (type.isRequired && isInserting) {
      context.missing(_typeMeta);
    }
    if (d.ground.present) {
      context.handle(
          _groundMeta, ground.isAcceptableValue(d.ground.value, _groundMeta));
    } else if (ground.isRequired && isInserting) {
      context.missing(_groundMeta);
    }
    if (d.trunk.present) {
      context.handle(
          _trunkMeta, trunk.isAcceptableValue(d.trunk.value, _trunkMeta));
    } else if (trunk.isRequired && isInserting) {
      context.missing(_trunkMeta);
    }
    if (d.height.present) {
      context.handle(
          _heightMeta, height.isAcceptableValue(d.height.value, _heightMeta));
    } else if (height.isRequired && isInserting) {
      context.missing(_heightMeta);
    }
    if (d.top.present) {
      context.handle(_topMeta, top.isAcceptableValue(d.top.value, _topMeta));
    } else if (top.isRequired && isInserting) {
      context.missing(_topMeta);
    }
    if (d.diameter.present) {
      context.handle(_diameterMeta,
          diameter.isAcceptableValue(d.diameter.value, _diameterMeta));
    } else if (diameter.isRequired && isInserting) {
      context.missing(_diameterMeta);
    }
    if (d.longevity.present) {
      context.handle(_longevityMeta,
          longevity.isAcceptableValue(d.longevity.value, _longevityMeta));
    } else if (longevity.isRequired && isInserting) {
      context.missing(_longevityMeta);
    }
    if (d.recolection.present) {
      context.handle(_recolectionMeta,
          recolection.isAcceptableValue(d.recolection.value, _recolectionMeta));
    } else if (recolection.isRequired && isInserting) {
      context.missing(_recolectionMeta);
    }
    if (d.spread.present) {
      context.handle(
          _spreadMeta, spread.isAcceptableValue(d.spread.value, _spreadMeta));
    } else if (spread.isRequired && isInserting) {
      context.missing(_spreadMeta);
    }
    if (d.seed.present) {
      context.handle(
          _seedMeta, seed.isAcceptableValue(d.seed.value, _seedMeta));
    } else if (seed.isRequired && isInserting) {
      context.missing(_seedMeta);
    }
    if (d.seedtreatment.present) {
      context.handle(
          _seedtreatmentMeta,
          seedtreatment.isAcceptableValue(
              d.seedtreatment.value, _seedtreatmentMeta));
    } else if (seedtreatment.isRequired && isInserting) {
      context.missing(_seedtreatmentMeta);
    }
    if (d.lastupdate.present) {
      context.handle(_lastupdateMeta,
          lastupdate.isAcceptableValue(d.lastupdate.value, _lastupdateMeta));
    } else if (lastupdate.isRequired && isInserting) {
      context.missing(_lastupdateMeta);
    }
    if (d.deleted.present) {
      context.handle(_deletedMeta,
          deleted.isAcceptableValue(d.deleted.value, _deletedMeta));
    } else if (deleted.isRequired && isInserting) {
      context.missing(_deletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tree map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tree.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TreesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.treeid.present) {
      map['treeid'] = Variable<String, StringType>(d.treeid.value);
    }
    if (d.type.present) {
      map['type'] = Variable<String, StringType>(d.type.value);
    }
    if (d.ground.present) {
      map['ground'] = Variable<String, StringType>(d.ground.value);
    }
    if (d.trunk.present) {
      map['trunk'] = Variable<String, StringType>(d.trunk.value);
    }
    if (d.height.present) {
      map['height'] = Variable<String, StringType>(d.height.value);
    }
    if (d.top.present) {
      map['top'] = Variable<String, StringType>(d.top.value);
    }
    if (d.diameter.present) {
      map['diameter'] = Variable<String, StringType>(d.diameter.value);
    }
    if (d.longevity.present) {
      map['longevity'] = Variable<String, StringType>(d.longevity.value);
    }
    if (d.recolection.present) {
      map['recolection'] = Variable<String, StringType>(d.recolection.value);
    }
    if (d.spread.present) {
      map['spread'] = Variable<String, StringType>(d.spread.value);
    }
    if (d.seed.present) {
      map['seed'] = Variable<String, StringType>(d.seed.value);
    }
    if (d.seedtreatment.present) {
      map['seedtreatment'] =
          Variable<String, StringType>(d.seedtreatment.value);
    }
    if (d.lastupdate.present) {
      map['lastupdate'] = Variable<DateTime, DateTimeType>(d.lastupdate.value);
    }
    if (d.deleted.present) {
      map['deleted'] = Variable<bool, BoolType>(d.deleted.value);
    }
    return map;
  }

  @override
  $TreesTable createAlias(String alias) {
    return $TreesTable(_db, alias);
  }
}

class Seed extends DataClass implements Insertable<Seed> {
  final int id2;
  final String seedid;
  final String seedtreatment;
  final String seedtreatmentdescription;
  final DateTime lastupdate;
  final bool deleted;
  Seed(
      {@required this.id2,
      @required this.seedid,
      @required this.seedtreatment,
      @required this.seedtreatmentdescription,
      this.lastupdate,
      @required this.deleted});
  factory Seed.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Seed(
      id2: intType.mapFromDatabaseResponse(data['${effectivePrefix}id2']),
      seedid:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}seedid']),
      seedtreatment: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}seedtreatment']),
      seedtreatmentdescription: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}seedtreatmentdescription']),
      lastupdate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}lastupdate']),
      deleted:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}deleted']),
    );
  }
  factory Seed.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Seed(
      id2: serializer.fromJson<int>(json['id2']),
      seedid: serializer.fromJson<String>(json['seedid']),
      seedtreatment: serializer.fromJson<String>(json['seedtreatment']),
      seedtreatmentdescription:
          serializer.fromJson<String>(json['seedtreatmentdescription']),
      lastupdate: serializer.fromJson<DateTime>(json['lastupdate']),
      deleted: serializer.fromJson<bool>(json['deleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id2': serializer.toJson<int>(id2),
      'seedid': serializer.toJson<String>(seedid),
      'seedtreatment': serializer.toJson<String>(seedtreatment),
      'seedtreatmentdescription':
          serializer.toJson<String>(seedtreatmentdescription),
      'lastupdate': serializer.toJson<DateTime>(lastupdate),
      'deleted': serializer.toJson<bool>(deleted),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Seed>>(bool nullToAbsent) {
    return SeedsCompanion(
      id2: id2 == null && nullToAbsent ? const Value.absent() : Value(id2),
      seedid:
          seedid == null && nullToAbsent ? const Value.absent() : Value(seedid),
      seedtreatment: seedtreatment == null && nullToAbsent
          ? const Value.absent()
          : Value(seedtreatment),
      seedtreatmentdescription: seedtreatmentdescription == null && nullToAbsent
          ? const Value.absent()
          : Value(seedtreatmentdescription),
      lastupdate: lastupdate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastupdate),
      deleted: deleted == null && nullToAbsent
          ? const Value.absent()
          : Value(deleted),
    ) as T;
  }

  Seed copyWith(
          {int id2,
          String seedid,
          String seedtreatment,
          String seedtreatmentdescription,
          DateTime lastupdate,
          bool deleted}) =>
      Seed(
        id2: id2 ?? this.id2,
        seedid: seedid ?? this.seedid,
        seedtreatment: seedtreatment ?? this.seedtreatment,
        seedtreatmentdescription:
            seedtreatmentdescription ?? this.seedtreatmentdescription,
        lastupdate: lastupdate ?? this.lastupdate,
        deleted: deleted ?? this.deleted,
      );
  @override
  String toString() {
    return (StringBuffer('Seed(')
          ..write('id2: $id2, ')
          ..write('seedid: $seedid, ')
          ..write('seedtreatment: $seedtreatment, ')
          ..write('seedtreatmentdescription: $seedtreatmentdescription, ')
          ..write('lastupdate: $lastupdate, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id2.hashCode,
      $mrjc(
          seedid.hashCode,
          $mrjc(
              seedtreatment.hashCode,
              $mrjc(seedtreatmentdescription.hashCode,
                  $mrjc(lastupdate.hashCode, deleted.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Seed &&
          other.id2 == id2 &&
          other.seedid == seedid &&
          other.seedtreatment == seedtreatment &&
          other.seedtreatmentdescription == seedtreatmentdescription &&
          other.lastupdate == lastupdate &&
          other.deleted == deleted);
}

class SeedsCompanion extends UpdateCompanion<Seed> {
  final Value<int> id2;
  final Value<String> seedid;
  final Value<String> seedtreatment;
  final Value<String> seedtreatmentdescription;
  final Value<DateTime> lastupdate;
  final Value<bool> deleted;
  const SeedsCompanion({
    this.id2 = const Value.absent(),
    this.seedid = const Value.absent(),
    this.seedtreatment = const Value.absent(),
    this.seedtreatmentdescription = const Value.absent(),
    this.lastupdate = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SeedsCompanion copyWith(
      {Value<int> id2,
      Value<String> seedid,
      Value<String> seedtreatment,
      Value<String> seedtreatmentdescription,
      Value<DateTime> lastupdate,
      Value<bool> deleted}) {
    return SeedsCompanion(
      id2: id2 ?? this.id2,
      seedid: seedid ?? this.seedid,
      seedtreatment: seedtreatment ?? this.seedtreatment,
      seedtreatmentdescription:
          seedtreatmentdescription ?? this.seedtreatmentdescription,
      lastupdate: lastupdate ?? this.lastupdate,
      deleted: deleted ?? this.deleted,
    );
  }
}

class $SeedsTable extends Seeds with TableInfo<$SeedsTable, Seed> {
  final GeneratedDatabase _db;
  final String _alias;
  $SeedsTable(this._db, [this._alias]);
  final VerificationMeta _id2Meta = const VerificationMeta('id2');
  GeneratedIntColumn _id2;
  @override
  GeneratedIntColumn get id2 => _id2 ??= _constructId2();
  GeneratedIntColumn _constructId2() {
    return GeneratedIntColumn('id2', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _seedidMeta = const VerificationMeta('seedid');
  GeneratedTextColumn _seedid;
  @override
  GeneratedTextColumn get seedid => _seedid ??= _constructSeedid();
  GeneratedTextColumn _constructSeedid() {
    return GeneratedTextColumn(
      'seedid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _seedtreatmentMeta =
      const VerificationMeta('seedtreatment');
  GeneratedTextColumn _seedtreatment;
  @override
  GeneratedTextColumn get seedtreatment =>
      _seedtreatment ??= _constructSeedtreatment();
  GeneratedTextColumn _constructSeedtreatment() {
    return GeneratedTextColumn('seedtreatment', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _seedtreatmentdescriptionMeta =
      const VerificationMeta('seedtreatmentdescription');
  GeneratedTextColumn _seedtreatmentdescription;
  @override
  GeneratedTextColumn get seedtreatmentdescription =>
      _seedtreatmentdescription ??= _constructSeedtreatmentdescription();
  GeneratedTextColumn _constructSeedtreatmentdescription() {
    return GeneratedTextColumn('seedtreatmentdescription', $tableName, false,
        minTextLength: 1, maxTextLength: 150);
  }

  final VerificationMeta _lastupdateMeta = const VerificationMeta('lastupdate');
  GeneratedDateTimeColumn _lastupdate;
  @override
  GeneratedDateTimeColumn get lastupdate =>
      _lastupdate ??= _constructLastupdate();
  GeneratedDateTimeColumn _constructLastupdate() {
    return GeneratedDateTimeColumn(
      'lastupdate',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  GeneratedBoolColumn _deleted;
  @override
  GeneratedBoolColumn get deleted => _deleted ??= _constructDeleted();
  GeneratedBoolColumn _constructDeleted() {
    return GeneratedBoolColumn('deleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id2,
        seedid,
        seedtreatment,
        seedtreatmentdescription,
        lastupdate,
        deleted
      ];
  @override
  $SeedsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'seeds';
  @override
  final String actualTableName = 'seeds';
  @override
  VerificationContext validateIntegrity(SeedsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id2.present) {
      context.handle(_id2Meta, id2.isAcceptableValue(d.id2.value, _id2Meta));
    } else if (id2.isRequired && isInserting) {
      context.missing(_id2Meta);
    }
    if (d.seedid.present) {
      context.handle(
          _seedidMeta, seedid.isAcceptableValue(d.seedid.value, _seedidMeta));
    } else if (seedid.isRequired && isInserting) {
      context.missing(_seedidMeta);
    }
    if (d.seedtreatment.present) {
      context.handle(
          _seedtreatmentMeta,
          seedtreatment.isAcceptableValue(
              d.seedtreatment.value, _seedtreatmentMeta));
    } else if (seedtreatment.isRequired && isInserting) {
      context.missing(_seedtreatmentMeta);
    }
    if (d.seedtreatmentdescription.present) {
      context.handle(
          _seedtreatmentdescriptionMeta,
          seedtreatmentdescription.isAcceptableValue(
              d.seedtreatmentdescription.value, _seedtreatmentdescriptionMeta));
    } else if (seedtreatmentdescription.isRequired && isInserting) {
      context.missing(_seedtreatmentdescriptionMeta);
    }
    if (d.lastupdate.present) {
      context.handle(_lastupdateMeta,
          lastupdate.isAcceptableValue(d.lastupdate.value, _lastupdateMeta));
    } else if (lastupdate.isRequired && isInserting) {
      context.missing(_lastupdateMeta);
    }
    if (d.deleted.present) {
      context.handle(_deletedMeta,
          deleted.isAcceptableValue(d.deleted.value, _deletedMeta));
    } else if (deleted.isRequired && isInserting) {
      context.missing(_deletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id2};
  @override
  Seed map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Seed.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SeedsCompanion d) {
    final map = <String, Variable>{};
    if (d.id2.present) {
      map['id2'] = Variable<int, IntType>(d.id2.value);
    }
    if (d.seedid.present) {
      map['seedid'] = Variable<String, StringType>(d.seedid.value);
    }
    if (d.seedtreatment.present) {
      map['seedtreatment'] =
          Variable<String, StringType>(d.seedtreatment.value);
    }
    if (d.seedtreatmentdescription.present) {
      map['seedtreatmentdescription'] =
          Variable<String, StringType>(d.seedtreatmentdescription.value);
    }
    if (d.lastupdate.present) {
      map['lastupdate'] = Variable<DateTime, DateTimeType>(d.lastupdate.value);
    }
    if (d.deleted.present) {
      map['deleted'] = Variable<bool, BoolType>(d.deleted.value);
    }
    return map;
  }

  @override
  $SeedsTable createAlias(String alias) {
    return $SeedsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $TreesTable _trees;
  $TreesTable get trees => _trees ??= $TreesTable(this);
  $SeedsTable _seeds;
  $SeedsTable get seeds => _seeds ??= $SeedsTable(this);
  @override
  List<TableInfo> get allTables => [trees, seeds];
}
