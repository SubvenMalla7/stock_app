// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_summary_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketSummaryEntityImpl _$$MarketSummaryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketSummaryEntityImpl(
      today_nepse: json['today_nepse'] as String? ?? '',
      change: (json['change'] as num?)?.toDouble() ?? 0.0,
      percent_change: (json['percent_change'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MarketSummaryEntityImplToJson(
        _$MarketSummaryEntityImpl instance) =>
    <String, dynamic>{
      'today_nepse': instance.today_nepse,
      'change': instance.change,
      'percent_change': instance.percent_change,
    };
