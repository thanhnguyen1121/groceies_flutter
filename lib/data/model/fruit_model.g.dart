// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

part of 'fruit_model.dart';

FruitModel _$FruitModelFromJson(Map<String, dynamic> json) {
  return FruitModel(
    json['url'] as String,
    json['name'] as String,
    json['shortDetail'] as String,
    json['price'] as String,
    json['longDetail'] as String,
    json['isFavorite'] as bool,
  );
}

Map<String, dynamic> _$FruitModelToJson(FruitModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'shortDetail': instance.shortDetail,
      'price': instance.price,
      'longDetail': instance.longDetail,
      'isFavorite': instance.isFavorite,
    };
