import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_enity/market_summary_entity.dart';
import 'package:stock_app/feature/dashboard/domain/entities/stock_entity/stock_entity.dart';

part 'market_entity_container.freezed.dart';
part 'market_entity_container.g.dart';

@freezed
abstract class MarketContainer with _$MarketContainer {
  const factory MarketContainer({
    @Default('') String response_code,
    @Default('') String response_message,
    @Default(null) MarketDataEntityContainer? data,
  }) = _MarketContainer;

  factory MarketContainer.fromJson(Map<String, dynamic> json) =>
      _$MarketContainerFromJson(json);
}

@freezed
abstract class MarketDataEntityContainer with _$MarketDataEntityContainer {
  const factory MarketDataEntityContainer({
    @Default(null) MarketSummaryEntity? market_sumary,
    @Default([]) List<StockEntity> minute_data,
    @Default([]) List<StockEntity> hour_data,
    @Default([]) List<StockEntity> day_data,
    @Default([]) List<StockEntity> month_data,
    @Default([]) List<StockEntity> yearly_data,
  }) = _MarketDataEntityContainer;

  factory MarketDataEntityContainer.fromJson(Map<String, dynamic> json) =>
      _$MarketDataEntityContainerFromJson(json);
}
