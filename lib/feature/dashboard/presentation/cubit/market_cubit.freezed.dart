// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketState {
  ApiRequestStates? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get showVisibilityIcon => throw _privateConstructorUsedError;
  MarketContainer? get marketData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketStateCopyWith<MarketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketStateCopyWith<$Res> {
  factory $MarketStateCopyWith(
          MarketState value, $Res Function(MarketState) then) =
      _$MarketStateCopyWithImpl<$Res, MarketState>;
  @useResult
  $Res call(
      {ApiRequestStates? status,
      String? message,
      bool showVisibilityIcon,
      MarketContainer? marketData});

  $MarketContainerCopyWith<$Res>? get marketData;
}

/// @nodoc
class _$MarketStateCopyWithImpl<$Res, $Val extends MarketState>
    implements $MarketStateCopyWith<$Res> {
  _$MarketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? marketData = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiRequestStates?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      marketData: freezed == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as MarketContainer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketContainerCopyWith<$Res>? get marketData {
    if (_value.marketData == null) {
      return null;
    }

    return $MarketContainerCopyWith<$Res>(_value.marketData!, (value) {
      return _then(_value.copyWith(marketData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketStateImplCopyWith<$Res>
    implements $MarketStateCopyWith<$Res> {
  factory _$$MarketStateImplCopyWith(
          _$MarketStateImpl value, $Res Function(_$MarketStateImpl) then) =
      __$$MarketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStates? status,
      String? message,
      bool showVisibilityIcon,
      MarketContainer? marketData});

  @override
  $MarketContainerCopyWith<$Res>? get marketData;
}

/// @nodoc
class __$$MarketStateImplCopyWithImpl<$Res>
    extends _$MarketStateCopyWithImpl<$Res, _$MarketStateImpl>
    implements _$$MarketStateImplCopyWith<$Res> {
  __$$MarketStateImplCopyWithImpl(
      _$MarketStateImpl _value, $Res Function(_$MarketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? showVisibilityIcon = null,
    Object? marketData = freezed,
  }) {
    return _then(_$MarketStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiRequestStates?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      showVisibilityIcon: null == showVisibilityIcon
          ? _value.showVisibilityIcon
          : showVisibilityIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      marketData: freezed == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as MarketContainer?,
    ));
  }
}

/// @nodoc

class _$MarketStateImpl extends _MarketState {
  const _$MarketStateImpl(
      {this.status = ApiRequestStates.initial,
      this.message = '',
      this.showVisibilityIcon = false,
      this.marketData = null})
      : super._();

  @override
  @JsonKey()
  final ApiRequestStates? status;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final bool showVisibilityIcon;
  @override
  @JsonKey()
  final MarketContainer? marketData;

  @override
  String toString() {
    return 'MarketState(status: $status, message: $message, showVisibilityIcon: $showVisibilityIcon, marketData: $marketData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.showVisibilityIcon, showVisibilityIcon) ||
                other.showVisibilityIcon == showVisibilityIcon) &&
            (identical(other.marketData, marketData) ||
                other.marketData == marketData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, showVisibilityIcon, marketData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketStateImplCopyWith<_$MarketStateImpl> get copyWith =>
      __$$MarketStateImplCopyWithImpl<_$MarketStateImpl>(this, _$identity);
}

abstract class _MarketState extends MarketState {
  const factory _MarketState(
      {final ApiRequestStates? status,
      final String? message,
      final bool showVisibilityIcon,
      final MarketContainer? marketData}) = _$MarketStateImpl;
  const _MarketState._() : super._();

  @override
  ApiRequestStates? get status;
  @override
  String? get message;
  @override
  bool get showVisibilityIcon;
  @override
  MarketContainer? get marketData;
  @override
  @JsonKey(ignore: true)
  _$$MarketStateImplCopyWith<_$MarketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
