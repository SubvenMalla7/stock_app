// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_entity_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketContainerImpl _$$MarketContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketContainerImpl(
      response_code: json['response_code'] as String? ?? '',
      response_message: json['response_message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : MarketDataEntityContainer.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarketContainerImplToJson(
        _$MarketContainerImpl instance) =>
    <String, dynamic>{
      'response_code': instance.response_code,
      'response_message': instance.response_message,
      'data': instance.data,
    };

_$MarketDataEntityContainerImpl _$$MarketDataEntityContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketDataEntityContainerImpl(
      market_sumary: json['market_sumary'] == null
          ? null
          : MarketSummaryEntity.fromJson(
              json['market_sumary'] as Map<String, dynamic>),
      minute_data: (json['minute_data'] as List<dynamic>?)
              ?.map((e) => StockEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hour_data: (json['hour_data'] as List<dynamic>?)
              ?.map((e) => StockEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      day_data: (json['day_data'] as List<dynamic>?)
              ?.map((e) => StockEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      month_data: (json['month_data'] as List<dynamic>?)
              ?.map((e) => StockEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      yearly_data: (json['yearly_data'] as List<dynamic>?)
              ?.map((e) => StockEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MarketDataEntityContainerImplToJson(
        _$MarketDataEntityContainerImpl instance) =>
    <String, dynamic>{
      'market_sumary': instance.market_sumary,
      'minute_data': instance.minute_data,
      'hour_data': instance.hour_data,
      'day_data': instance.day_data,
      'month_data': instance.month_data,
      'yearly_data': instance.yearly_data,
    };
