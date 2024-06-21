import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_entity.freezed.dart';
part 'stock_entity.g.dart';

@freezed
abstract class StockEntity with _$StockEntity {
  const factory StockEntity({
    @Default('') String date,
    @Default(0.0) double change,
    @Default(0.0) double percent_change,
    @Default(0.0) double index,
  }) = _StockEntity;

  factory StockEntity.fromJson(Map<String, dynamic> json) =>
      _$StockEntityFromJson(json);
}
