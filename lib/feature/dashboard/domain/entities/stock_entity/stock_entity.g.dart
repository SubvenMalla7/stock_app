// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockEntityImpl _$$StockEntityImplFromJson(Map<String, dynamic> json) =>
    _$StockEntityImpl(
      date: json['date'] as String? ?? '',
      change: (json['change'] as num?)?.toDouble() ?? 0.0,
      percent_change: (json['percent_change'] as num?)?.toDouble() ?? 0.0,
      index: (json['index'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$StockEntityImplToJson(_$StockEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'change': instance.change,
      'percent_change': instance.percent_change,
      'index': instance.index,
    };
