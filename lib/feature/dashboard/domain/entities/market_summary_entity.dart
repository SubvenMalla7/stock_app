import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_summary_entity.freezed.dart';
part 'market_summary_entity.g.dart';

@freezed
abstract class MarketSummaryEntity with _$MarketSummaryEntity {
  const factory MarketSummaryEntity({
    @Default('') String today_nepse,
    @Default(0.0) double change,
    @Default(0.0) double percent_change,
  }) = _MarketSummaryEntity;

  factory MarketSummaryEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketSummaryEntityFromJson(json);
}
