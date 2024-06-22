// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_entity_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketContainer _$MarketContainerFromJson(Map<String, dynamic> json) {
  return _MarketContainer.fromJson(json);
}

/// @nodoc
mixin _$MarketContainer {
  String get response_code => throw _privateConstructorUsedError;
  String get response_message => throw _privateConstructorUsedError;
  MarketDataEntityContainer? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketContainerCopyWith<MarketContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketContainerCopyWith<$Res> {
  factory $MarketContainerCopyWith(
          MarketContainer value, $Res Function(MarketContainer) then) =
      _$MarketContainerCopyWithImpl<$Res, MarketContainer>;
  @useResult
  $Res call(
      {String response_code,
      String response_message,
      MarketDataEntityContainer? data});

  $MarketDataEntityContainerCopyWith<$Res>? get data;
}

/// @nodoc
class _$MarketContainerCopyWithImpl<$Res, $Val extends MarketContainer>
    implements $MarketContainerCopyWith<$Res> {
  _$MarketContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? response_message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as String,
      response_message: null == response_message
          ? _value.response_message
          : response_message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarketDataEntityContainer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketDataEntityContainerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MarketDataEntityContainerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketContainerImplCopyWith<$Res>
    implements $MarketContainerCopyWith<$Res> {
  factory _$$MarketContainerImplCopyWith(_$MarketContainerImpl value,
          $Res Function(_$MarketContainerImpl) then) =
      __$$MarketContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String response_code,
      String response_message,
      MarketDataEntityContainer? data});

  @override
  $MarketDataEntityContainerCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MarketContainerImplCopyWithImpl<$Res>
    extends _$MarketContainerCopyWithImpl<$Res, _$MarketContainerImpl>
    implements _$$MarketContainerImplCopyWith<$Res> {
  __$$MarketContainerImplCopyWithImpl(
      _$MarketContainerImpl _value, $Res Function(_$MarketContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? response_message = null,
    Object? data = freezed,
  }) {
    return _then(_$MarketContainerImpl(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as String,
      response_message: null == response_message
          ? _value.response_message
          : response_message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarketDataEntityContainer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketContainerImpl implements _MarketContainer {
  const _$MarketContainerImpl(
      {this.response_code = '', this.response_message = '', this.data = null});

  factory _$MarketContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketContainerImplFromJson(json);

  @override
  @JsonKey()
  final String response_code;
  @override
  @JsonKey()
  final String response_message;
  @override
  @JsonKey()
  final MarketDataEntityContainer? data;

  @override
  String toString() {
    return 'MarketContainer(response_code: $response_code, response_message: $response_message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketContainerImpl &&
            (identical(other.response_code, response_code) ||
                other.response_code == response_code) &&
            (identical(other.response_message, response_message) ||
                other.response_message == response_message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, response_code, response_message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketContainerImplCopyWith<_$MarketContainerImpl> get copyWith =>
      __$$MarketContainerImplCopyWithImpl<_$MarketContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketContainerImplToJson(
      this,
    );
  }
}

abstract class _MarketContainer implements MarketContainer {
  const factory _MarketContainer(
      {final String response_code,
      final String response_message,
      final MarketDataEntityContainer? data}) = _$MarketContainerImpl;

  factory _MarketContainer.fromJson(Map<String, dynamic> json) =
      _$MarketContainerImpl.fromJson;

  @override
  String get response_code;
  @override
  String get response_message;
  @override
  MarketDataEntityContainer? get data;
  @override
  @JsonKey(ignore: true)
  _$$MarketContainerImplCopyWith<_$MarketContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketDataEntityContainer _$MarketDataEntityContainerFromJson(
    Map<String, dynamic> json) {
  return _MarketDataEntityContainer.fromJson(json);
}

/// @nodoc
mixin _$MarketDataEntityContainer {
  MarketSummaryEntity? get market_sumary => throw _privateConstructorUsedError;
  List<StockEntity> get minute_data => throw _privateConstructorUsedError;
  List<StockEntity> get hour_data => throw _privateConstructorUsedError;
  List<StockEntity> get day_data => throw _privateConstructorUsedError;
  List<StockEntity> get month_data => throw _privateConstructorUsedError;
  List<StockEntity> get yearly_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketDataEntityContainerCopyWith<MarketDataEntityContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDataEntityContainerCopyWith<$Res> {
  factory $MarketDataEntityContainerCopyWith(MarketDataEntityContainer value,
          $Res Function(MarketDataEntityContainer) then) =
      _$MarketDataEntityContainerCopyWithImpl<$Res, MarketDataEntityContainer>;
  @useResult
  $Res call(
      {MarketSummaryEntity? market_sumary,
      List<StockEntity> minute_data,
      List<StockEntity> hour_data,
      List<StockEntity> day_data,
      List<StockEntity> month_data,
      List<StockEntity> yearly_data});

  $MarketSummaryEntityCopyWith<$Res>? get market_sumary;
}

/// @nodoc
class _$MarketDataEntityContainerCopyWithImpl<$Res,
        $Val extends MarketDataEntityContainer>
    implements $MarketDataEntityContainerCopyWith<$Res> {
  _$MarketDataEntityContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market_sumary = freezed,
    Object? minute_data = null,
    Object? hour_data = null,
    Object? day_data = null,
    Object? month_data = null,
    Object? yearly_data = null,
  }) {
    return _then(_value.copyWith(
      market_sumary: freezed == market_sumary
          ? _value.market_sumary
          : market_sumary // ignore: cast_nullable_to_non_nullable
              as MarketSummaryEntity?,
      minute_data: null == minute_data
          ? _value.minute_data
          : minute_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      hour_data: null == hour_data
          ? _value.hour_data
          : hour_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      day_data: null == day_data
          ? _value.day_data
          : day_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      month_data: null == month_data
          ? _value.month_data
          : month_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      yearly_data: null == yearly_data
          ? _value.yearly_data
          : yearly_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketSummaryEntityCopyWith<$Res>? get market_sumary {
    if (_value.market_sumary == null) {
      return null;
    }

    return $MarketSummaryEntityCopyWith<$Res>(_value.market_sumary!, (value) {
      return _then(_value.copyWith(market_sumary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MarketDataEntityContainerImplCopyWith<$Res>
    implements $MarketDataEntityContainerCopyWith<$Res> {
  factory _$$MarketDataEntityContainerImplCopyWith(
          _$MarketDataEntityContainerImpl value,
          $Res Function(_$MarketDataEntityContainerImpl) then) =
      __$$MarketDataEntityContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MarketSummaryEntity? market_sumary,
      List<StockEntity> minute_data,
      List<StockEntity> hour_data,
      List<StockEntity> day_data,
      List<StockEntity> month_data,
      List<StockEntity> yearly_data});

  @override
  $MarketSummaryEntityCopyWith<$Res>? get market_sumary;
}

/// @nodoc
class __$$MarketDataEntityContainerImplCopyWithImpl<$Res>
    extends _$MarketDataEntityContainerCopyWithImpl<$Res,
        _$MarketDataEntityContainerImpl>
    implements _$$MarketDataEntityContainerImplCopyWith<$Res> {
  __$$MarketDataEntityContainerImplCopyWithImpl(
      _$MarketDataEntityContainerImpl _value,
      $Res Function(_$MarketDataEntityContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market_sumary = freezed,
    Object? minute_data = null,
    Object? hour_data = null,
    Object? day_data = null,
    Object? month_data = null,
    Object? yearly_data = null,
  }) {
    return _then(_$MarketDataEntityContainerImpl(
      market_sumary: freezed == market_sumary
          ? _value.market_sumary
          : market_sumary // ignore: cast_nullable_to_non_nullable
              as MarketSummaryEntity?,
      minute_data: null == minute_data
          ? _value._minute_data
          : minute_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      hour_data: null == hour_data
          ? _value._hour_data
          : hour_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      day_data: null == day_data
          ? _value._day_data
          : day_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      month_data: null == month_data
          ? _value._month_data
          : month_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
      yearly_data: null == yearly_data
          ? _value._yearly_data
          : yearly_data // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketDataEntityContainerImpl implements _MarketDataEntityContainer {
  const _$MarketDataEntityContainerImpl(
      {this.market_sumary = null,
      final List<StockEntity> minute_data = const [],
      final List<StockEntity> hour_data = const [],
      final List<StockEntity> day_data = const [],
      final List<StockEntity> month_data = const [],
      final List<StockEntity> yearly_data = const []})
      : _minute_data = minute_data,
        _hour_data = hour_data,
        _day_data = day_data,
        _month_data = month_data,
        _yearly_data = yearly_data;

  factory _$MarketDataEntityContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketDataEntityContainerImplFromJson(json);

  @override
  @JsonKey()
  final MarketSummaryEntity? market_sumary;
  final List<StockEntity> _minute_data;
  @override
  @JsonKey()
  List<StockEntity> get minute_data {
    if (_minute_data is EqualUnmodifiableListView) return _minute_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minute_data);
  }

  final List<StockEntity> _hour_data;
  @override
  @JsonKey()
  List<StockEntity> get hour_data {
    if (_hour_data is EqualUnmodifiableListView) return _hour_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour_data);
  }

  final List<StockEntity> _day_data;
  @override
  @JsonKey()
  List<StockEntity> get day_data {
    if (_day_data is EqualUnmodifiableListView) return _day_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_day_data);
  }

  final List<StockEntity> _month_data;
  @override
  @JsonKey()
  List<StockEntity> get month_data {
    if (_month_data is EqualUnmodifiableListView) return _month_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_month_data);
  }

  final List<StockEntity> _yearly_data;
  @override
  @JsonKey()
  List<StockEntity> get yearly_data {
    if (_yearly_data is EqualUnmodifiableListView) return _yearly_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearly_data);
  }

  @override
  String toString() {
    return 'MarketDataEntityContainer(market_sumary: $market_sumary, minute_data: $minute_data, hour_data: $hour_data, day_data: $day_data, month_data: $month_data, yearly_data: $yearly_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketDataEntityContainerImpl &&
            (identical(other.market_sumary, market_sumary) ||
                other.market_sumary == market_sumary) &&
            const DeepCollectionEquality()
                .equals(other._minute_data, _minute_data) &&
            const DeepCollectionEquality()
                .equals(other._hour_data, _hour_data) &&
            const DeepCollectionEquality().equals(other._day_data, _day_data) &&
            const DeepCollectionEquality()
                .equals(other._month_data, _month_data) &&
            const DeepCollectionEquality()
                .equals(other._yearly_data, _yearly_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      market_sumary,
      const DeepCollectionEquality().hash(_minute_data),
      const DeepCollectionEquality().hash(_hour_data),
      const DeepCollectionEquality().hash(_day_data),
      const DeepCollectionEquality().hash(_month_data),
      const DeepCollectionEquality().hash(_yearly_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketDataEntityContainerImplCopyWith<_$MarketDataEntityContainerImpl>
      get copyWith => __$$MarketDataEntityContainerImplCopyWithImpl<
          _$MarketDataEntityContainerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketDataEntityContainerImplToJson(
      this,
    );
  }
}

abstract class _MarketDataEntityContainer implements MarketDataEntityContainer {
  const factory _MarketDataEntityContainer(
      {final MarketSummaryEntity? market_sumary,
      final List<StockEntity> minute_data,
      final List<StockEntity> hour_data,
      final List<StockEntity> day_data,
      final List<StockEntity> month_data,
      final List<StockEntity> yearly_data}) = _$MarketDataEntityContainerImpl;

  factory _MarketDataEntityContainer.fromJson(Map<String, dynamic> json) =
      _$MarketDataEntityContainerImpl.fromJson;

  @override
  MarketSummaryEntity? get market_sumary;
  @override
  List<StockEntity> get minute_data;
  @override
  List<StockEntity> get hour_data;
  @override
  List<StockEntity> get day_data;
  @override
  List<StockEntity> get month_data;
  @override
  List<StockEntity> get yearly_data;
  @override
  @JsonKey(ignore: true)
  _$$MarketDataEntityContainerImplCopyWith<_$MarketDataEntityContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
