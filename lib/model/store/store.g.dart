// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      name: json['name'] as String,
      vicinity: json['vicinity'] as String,
      geometry: json['geometry'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vicinity': instance.vicinity,
      'geometry': instance.geometry,
    };
