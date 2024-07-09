// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFoodDataCollection on Isar {
  IsarCollection<FoodData> get foodDatas => this.collection();
}

const FoodDataSchema = CollectionSchema(
  name: r'FoodData',
  id: -8000000396996210907,
  properties: {
    r'imageDir': PropertySchema(
      id: 0,
      name: r'imageDir',
      type: IsarType.string,
    ),
    r'imageName': PropertySchema(
      id: 1,
      name: r'imageName',
      type: IsarType.string,
    ),
    r'isCustom': PropertySchema(
      id: 2,
      name: r'isCustom',
      type: IsarType.bool,
    ),
    r'isFavourite': PropertySchema(
      id: 3,
      name: r'isFavourite',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 5,
      name: r'tags',
      type: IsarType.string,
    )
  },
  estimateSize: _foodDataEstimateSize,
  serialize: _foodDataSerialize,
  deserialize: _foodDataDeserialize,
  deserializeProp: _foodDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _foodDataGetId,
  getLinks: _foodDataGetLinks,
  attach: _foodDataAttach,
  version: '3.1.0+1',
);

int _foodDataEstimateSize(
  FoodData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imageDir.length * 3;
  bytesCount += 3 + object.imageName.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.tags.length * 3;
  return bytesCount;
}

void _foodDataSerialize(
  FoodData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.imageDir);
  writer.writeString(offsets[1], object.imageName);
  writer.writeBool(offsets[2], object.isCustom);
  writer.writeBool(offsets[3], object.isFavourite);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.tags);
}

FoodData _foodDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FoodData(
    id,
    reader.readString(offsets[4]),
    reader.readString(offsets[1]),
    reader.readString(offsets[5]),
    imageDir: reader.readStringOrNull(offsets[0]) ?? "assets/images/food/",
  );
  object.isCustom = reader.readBool(offsets[2]);
  object.isFavourite = reader.readBool(offsets[3]);
  return object;
}

P _foodDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? "assets/images/food/") as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _foodDataGetId(FoodData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _foodDataGetLinks(FoodData object) {
  return [];
}

void _foodDataAttach(IsarCollection<dynamic> col, Id id, FoodData object) {
  object.id = id;
}

extension FoodDataQueryWhereSort on QueryBuilder<FoodData, FoodData, QWhere> {
  QueryBuilder<FoodData, FoodData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FoodDataQueryWhere on QueryBuilder<FoodData, FoodData, QWhereClause> {
  QueryBuilder<FoodData, FoodData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FoodDataQueryFilter
    on QueryBuilder<FoodData, FoodData, QFilterCondition> {
  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageDir',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageDir',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageDir',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageDirIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageDir',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> imageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition>
      imageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> isCustomEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCustom',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> isFavouriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavourite',
        value: value,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }
}

extension FoodDataQueryObject
    on QueryBuilder<FoodData, FoodData, QFilterCondition> {}

extension FoodDataQueryLinks
    on QueryBuilder<FoodData, FoodData, QFilterCondition> {}

extension FoodDataQuerySortBy on QueryBuilder<FoodData, FoodData, QSortBy> {
  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByImageDir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageDir', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByImageDirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageDir', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByIsCustomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByIsFavourite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavourite', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByIsFavouriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavourite', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tags', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> sortByTagsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tags', Sort.desc);
    });
  }
}

extension FoodDataQuerySortThenBy
    on QueryBuilder<FoodData, FoodData, QSortThenBy> {
  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByImageDir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageDir', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByImageDirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageDir', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByIsCustomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByIsFavourite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavourite', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByIsFavouriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavourite', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tags', Sort.asc);
    });
  }

  QueryBuilder<FoodData, FoodData, QAfterSortBy> thenByTagsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tags', Sort.desc);
    });
  }
}

extension FoodDataQueryWhereDistinct
    on QueryBuilder<FoodData, FoodData, QDistinct> {
  QueryBuilder<FoodData, FoodData, QDistinct> distinctByImageDir(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageDir', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FoodData, FoodData, QDistinct> distinctByImageName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FoodData, FoodData, QDistinct> distinctByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCustom');
    });
  }

  QueryBuilder<FoodData, FoodData, QDistinct> distinctByIsFavourite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavourite');
    });
  }

  QueryBuilder<FoodData, FoodData, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FoodData, FoodData, QDistinct> distinctByTags(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags', caseSensitive: caseSensitive);
    });
  }
}

extension FoodDataQueryProperty
    on QueryBuilder<FoodData, FoodData, QQueryProperty> {
  QueryBuilder<FoodData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FoodData, String, QQueryOperations> imageDirProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageDir');
    });
  }

  QueryBuilder<FoodData, String, QQueryOperations> imageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageName');
    });
  }

  QueryBuilder<FoodData, bool, QQueryOperations> isCustomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCustom');
    });
  }

  QueryBuilder<FoodData, bool, QQueryOperations> isFavouriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavourite');
    });
  }

  QueryBuilder<FoodData, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<FoodData, String, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }
}
