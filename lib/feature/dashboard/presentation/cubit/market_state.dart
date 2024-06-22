part of 'market_cubit.dart';

@freezed
class MarketState with _$MarketState {
  const MarketState._();

  const factory MarketState({
    @Default(ApiRequestStates.initial) ApiRequestStates? status,
    @Default('') String? message,
    @Default(false) bool showVisibilityIcon,
    @Default(null) MarketContainer? marketData,
  }) = _MarketState;
}
