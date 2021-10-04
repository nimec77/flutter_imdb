// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MovieTitleData extends DataClass implements Insertable<MovieTitleData> {
  final String titleId;
  final String type;
  final String primaryTitle;
  final String originalTitle;
  final bool isAdult;
  final int? premiered;
  final int? ended;
  final int? runtimeMinutes;
  final String genres;
  MovieTitleData(
      {required this.titleId,
      required this.type,
      required this.primaryTitle,
      required this.originalTitle,
      required this.isAdult,
      this.premiered,
      this.ended,
      this.runtimeMinutes,
      required this.genres});
  factory MovieTitleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MovieTitleData(
      titleId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title_id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      primaryTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}primary_title'])!,
      originalTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}original_title'])!,
      isAdult: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_adult'])!,
      premiered: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}premiered']),
      ended: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ended']),
      runtimeMinutes: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}runtime_minutes']),
      genres: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}genres'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['title_id'] = Variable<String>(titleId);
    map['type'] = Variable<String>(type);
    map['primary_title'] = Variable<String>(primaryTitle);
    map['original_title'] = Variable<String>(originalTitle);
    map['is_adult'] = Variable<bool>(isAdult);
    if (!nullToAbsent || premiered != null) {
      map['premiered'] = Variable<int?>(premiered);
    }
    if (!nullToAbsent || ended != null) {
      map['ended'] = Variable<int?>(ended);
    }
    if (!nullToAbsent || runtimeMinutes != null) {
      map['runtime_minutes'] = Variable<int?>(runtimeMinutes);
    }
    map['genres'] = Variable<String>(genres);
    return map;
  }

  MoviesTitlesCompanion toCompanion(bool nullToAbsent) {
    return MoviesTitlesCompanion(
      titleId: Value(titleId),
      type: Value(type),
      primaryTitle: Value(primaryTitle),
      originalTitle: Value(originalTitle),
      isAdult: Value(isAdult),
      premiered: premiered == null && nullToAbsent
          ? const Value.absent()
          : Value(premiered),
      ended:
          ended == null && nullToAbsent ? const Value.absent() : Value(ended),
      runtimeMinutes: runtimeMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(runtimeMinutes),
      genres: Value(genres),
    );
  }

  factory MovieTitleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MovieTitleData(
      titleId: serializer.fromJson<String>(json['titleId']),
      type: serializer.fromJson<String>(json['type']),
      primaryTitle: serializer.fromJson<String>(json['primaryTitle']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      isAdult: serializer.fromJson<bool>(json['isAdult']),
      premiered: serializer.fromJson<int?>(json['premiered']),
      ended: serializer.fromJson<int?>(json['ended']),
      runtimeMinutes: serializer.fromJson<int?>(json['runtimeMinutes']),
      genres: serializer.fromJson<String>(json['genres']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'titleId': serializer.toJson<String>(titleId),
      'type': serializer.toJson<String>(type),
      'primaryTitle': serializer.toJson<String>(primaryTitle),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'isAdult': serializer.toJson<bool>(isAdult),
      'premiered': serializer.toJson<int?>(premiered),
      'ended': serializer.toJson<int?>(ended),
      'runtimeMinutes': serializer.toJson<int?>(runtimeMinutes),
      'genres': serializer.toJson<String>(genres),
    };
  }

  MovieTitleData copyWith(
          {String? titleId,
          String? type,
          String? primaryTitle,
          String? originalTitle,
          bool? isAdult,
          int? premiered,
          int? ended,
          int? runtimeMinutes,
          String? genres}) =>
      MovieTitleData(
        titleId: titleId ?? this.titleId,
        type: type ?? this.type,
        primaryTitle: primaryTitle ?? this.primaryTitle,
        originalTitle: originalTitle ?? this.originalTitle,
        isAdult: isAdult ?? this.isAdult,
        premiered: premiered ?? this.premiered,
        ended: ended ?? this.ended,
        runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
        genres: genres ?? this.genres,
      );
  @override
  String toString() {
    return (StringBuffer('MovieTitleData(')
          ..write('titleId: $titleId, ')
          ..write('type: $type, ')
          ..write('primaryTitle: $primaryTitle, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('isAdult: $isAdult, ')
          ..write('premiered: $premiered, ')
          ..write('ended: $ended, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('genres: $genres')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      titleId.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              primaryTitle.hashCode,
              $mrjc(
                  originalTitle.hashCode,
                  $mrjc(
                      isAdult.hashCode,
                      $mrjc(
                          premiered.hashCode,
                          $mrjc(
                              ended.hashCode,
                              $mrjc(runtimeMinutes.hashCode,
                                  genres.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTitleData &&
          other.titleId == this.titleId &&
          other.type == this.type &&
          other.primaryTitle == this.primaryTitle &&
          other.originalTitle == this.originalTitle &&
          other.isAdult == this.isAdult &&
          other.premiered == this.premiered &&
          other.ended == this.ended &&
          other.runtimeMinutes == this.runtimeMinutes &&
          other.genres == this.genres);
}

class MoviesTitlesCompanion extends UpdateCompanion<MovieTitleData> {
  final Value<String> titleId;
  final Value<String> type;
  final Value<String> primaryTitle;
  final Value<String> originalTitle;
  final Value<bool> isAdult;
  final Value<int?> premiered;
  final Value<int?> ended;
  final Value<int?> runtimeMinutes;
  final Value<String> genres;
  const MoviesTitlesCompanion({
    this.titleId = const Value.absent(),
    this.type = const Value.absent(),
    this.primaryTitle = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.isAdult = const Value.absent(),
    this.premiered = const Value.absent(),
    this.ended = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    this.genres = const Value.absent(),
  });
  MoviesTitlesCompanion.insert({
    required String titleId,
    required String type,
    required String primaryTitle,
    required String originalTitle,
    required bool isAdult,
    this.premiered = const Value.absent(),
    this.ended = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    required String genres,
  })  : titleId = Value(titleId),
        type = Value(type),
        primaryTitle = Value(primaryTitle),
        originalTitle = Value(originalTitle),
        isAdult = Value(isAdult),
        genres = Value(genres);
  static Insertable<MovieTitleData> custom({
    Expression<String>? titleId,
    Expression<String>? type,
    Expression<String>? primaryTitle,
    Expression<String>? originalTitle,
    Expression<bool>? isAdult,
    Expression<int?>? premiered,
    Expression<int?>? ended,
    Expression<int?>? runtimeMinutes,
    Expression<String>? genres,
  }) {
    return RawValuesInsertable({
      if (titleId != null) 'title_id': titleId,
      if (type != null) 'type': type,
      if (primaryTitle != null) 'primary_title': primaryTitle,
      if (originalTitle != null) 'original_title': originalTitle,
      if (isAdult != null) 'is_adult': isAdult,
      if (premiered != null) 'premiered': premiered,
      if (ended != null) 'ended': ended,
      if (runtimeMinutes != null) 'runtime_minutes': runtimeMinutes,
      if (genres != null) 'genres': genres,
    });
  }

  MoviesTitlesCompanion copyWith(
      {Value<String>? titleId,
      Value<String>? type,
      Value<String>? primaryTitle,
      Value<String>? originalTitle,
      Value<bool>? isAdult,
      Value<int?>? premiered,
      Value<int?>? ended,
      Value<int?>? runtimeMinutes,
      Value<String>? genres}) {
    return MoviesTitlesCompanion(
      titleId: titleId ?? this.titleId,
      type: type ?? this.type,
      primaryTitle: primaryTitle ?? this.primaryTitle,
      originalTitle: originalTitle ?? this.originalTitle,
      isAdult: isAdult ?? this.isAdult,
      premiered: premiered ?? this.premiered,
      ended: ended ?? this.ended,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      genres: genres ?? this.genres,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (titleId.present) {
      map['title_id'] = Variable<String>(titleId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (primaryTitle.present) {
      map['primary_title'] = Variable<String>(primaryTitle.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (isAdult.present) {
      map['is_adult'] = Variable<bool>(isAdult.value);
    }
    if (premiered.present) {
      map['premiered'] = Variable<int?>(premiered.value);
    }
    if (ended.present) {
      map['ended'] = Variable<int?>(ended.value);
    }
    if (runtimeMinutes.present) {
      map['runtime_minutes'] = Variable<int?>(runtimeMinutes.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(genres.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoviesTitlesCompanion(')
          ..write('titleId: $titleId, ')
          ..write('type: $type, ')
          ..write('primaryTitle: $primaryTitle, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('isAdult: $isAdult, ')
          ..write('premiered: $premiered, ')
          ..write('ended: $ended, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('genres: $genres')
          ..write(')'))
        .toString();
  }
}

class $MoviesTitlesTable extends MoviesTitles
    with TableInfo<$MoviesTitlesTable, MovieTitleData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MoviesTitlesTable(this._db, [this._alias]);
  final VerificationMeta _titleIdMeta = const VerificationMeta('titleId');
  late final GeneratedColumn<String?> titleId = GeneratedColumn<String?>(
      'title_id', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _primaryTitleMeta =
      const VerificationMeta('primaryTitle');
  late final GeneratedColumn<String?> primaryTitle = GeneratedColumn<String?>(
      'primary_title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  late final GeneratedColumn<String?> originalTitle = GeneratedColumn<String?>(
      'original_title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _isAdultMeta = const VerificationMeta('isAdult');
  late final GeneratedColumn<bool?> isAdult = GeneratedColumn<bool?>(
      'is_adult', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_adult IN (0, 1))');
  final VerificationMeta _premieredMeta = const VerificationMeta('premiered');
  late final GeneratedColumn<int?> premiered = GeneratedColumn<int?>(
      'premiered', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _endedMeta = const VerificationMeta('ended');
  late final GeneratedColumn<int?> ended = GeneratedColumn<int?>(
      'ended', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _runtimeMinutesMeta =
      const VerificationMeta('runtimeMinutes');
  late final GeneratedColumn<int?> runtimeMinutes = GeneratedColumn<int?>(
      'runtime_minutes', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _genresMeta = const VerificationMeta('genres');
  late final GeneratedColumn<String?> genres = GeneratedColumn<String?>(
      'genres', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        titleId,
        type,
        primaryTitle,
        originalTitle,
        isAdult,
        premiered,
        ended,
        runtimeMinutes,
        genres
      ];
  @override
  String get aliasedName => _alias ?? 'titles';
  @override
  String get actualTableName => 'titles';
  @override
  VerificationContext validateIntegrity(Insertable<MovieTitleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title_id')) {
      context.handle(_titleIdMeta,
          titleId.isAcceptableOrUnknown(data['title_id']!, _titleIdMeta));
    } else if (isInserting) {
      context.missing(_titleIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('primary_title')) {
      context.handle(
          _primaryTitleMeta,
          primaryTitle.isAcceptableOrUnknown(
              data['primary_title']!, _primaryTitleMeta));
    } else if (isInserting) {
      context.missing(_primaryTitleMeta);
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    } else if (isInserting) {
      context.missing(_originalTitleMeta);
    }
    if (data.containsKey('is_adult')) {
      context.handle(_isAdultMeta,
          isAdult.isAcceptableOrUnknown(data['is_adult']!, _isAdultMeta));
    } else if (isInserting) {
      context.missing(_isAdultMeta);
    }
    if (data.containsKey('premiered')) {
      context.handle(_premieredMeta,
          premiered.isAcceptableOrUnknown(data['premiered']!, _premieredMeta));
    }
    if (data.containsKey('ended')) {
      context.handle(
          _endedMeta, ended.isAcceptableOrUnknown(data['ended']!, _endedMeta));
    }
    if (data.containsKey('runtime_minutes')) {
      context.handle(
          _runtimeMinutesMeta,
          runtimeMinutes.isAcceptableOrUnknown(
              data['runtime_minutes']!, _runtimeMinutesMeta));
    }
    if (data.containsKey('genres')) {
      context.handle(_genresMeta,
          genres.isAcceptableOrUnknown(data['genres']!, _genresMeta));
    } else if (isInserting) {
      context.missing(_genresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {titleId};
  @override
  MovieTitleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MovieTitleData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoviesTitlesTable createAlias(String alias) {
    return $MoviesTitlesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $MoviesTitlesTable moviesTitles = $MoviesTitlesTable(this);
  late final MovieTitleDaoImp movieTitleDaoImp =
      MovieTitleDaoImp(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [moviesTitles];
}
