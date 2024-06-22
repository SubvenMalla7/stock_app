// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockEntity _$StockEntityFromJson(Map<String, dynamic> json) {
  return _StockEntity.fromJson(json);
}

/// @nodoc
mixin _$StockEntity {
  String get date => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get percent_change => throw _privateConstructorUsedError;
  double get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockEntityCopyWith<StockEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEntityCopyWith<$Res> {
  factory $StockEntityCopyWith(
          StockEntity value, $Res Function(StockEntity) then) =
      _$StockEntityCopyWithImpl<$Res, StockEntity>;
  @useResult
  $Res call({String date, double change, double percent_change, double index});
}

/// @nodoc
class _$StockEntityCopyWithImpl<$Res, $Val extends StockEntity>
    implements $StockEntityCopyWith<$Res> {
  _$StockEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? change = null,
    Object? percent_change = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockEntityImplCopyWith<$Res>
    implements $StockEntityCopyWith<$Res> {
  factory _$$StockEntityImplCopyWith(
          _$StockEntityImpl value, $Res Function(_$StockEntityImpl) then) =
      __$$StockEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, double change, double percent_change, double index});
}

/// @nodoc
class __$$StockEntityImplCopyWithImpl<$Res>
    extends _$StockEntityCopyWithImpl<$Res, _$StockEntityImpl>
    implements _$$StockEntityImplCopyWith<$Res> {
  __$$StockEntityImplCopyWithImpl(
      _$StockEntityImpl _value, $Res Function(_$StockEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? change = null,
    Object? percent_change = null,
    Object? index = null,
  }) {
    return _then(_$StockEntityImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockEntityImpl implements _StockEntity {
  const _$StockEntityImpl(
      {this.date = '',
      this.change = 0.0,
      this.percent_change = 0.0,
      this.index = 0.0});

  factory _$StockEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockEntityImplFromJson(json);

  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final double change;
  @override
  @JsonKey()
  final double percent_change;
  @override
  @JsonKey()
  final double index;

  @override
  String toString() {
    return 'StockEntity(date: $date, change: $change, percent_change: $percent_change, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percent_change, percent_change) ||
                other.percent_change == percent_change) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, change, percent_change, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockEntityImplCopyWith<_$StockEntityImpl> get copyWith =>
      __$$StockEntityImplCopyWithImpl<_$StockEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockEntityImplToJson(
      this,
    );
  }
}

abstract class _StockEntity implements StockEntity {
  const factory _StockEntity(
      {final String date,
      final double change,
      final double percent_change,
      final double index}) = _$StockEntityImpl;

  factory _StockEntity.fromJson(Map<String, dynamic> json) =
      _$StockEntityImpl.fromJson;

  @override
  String get date;
  @override
  double get change;
  @override
  double get percent_change;
  @override
  double get index;
  @override
  @JsonKey(ignore: true)
  _$$StockEntityImplCopyWith<_$StockEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
