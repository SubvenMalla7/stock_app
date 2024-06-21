// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuccessEntity _$SuccessEntityFromJson(Map<String, dynamic> json) {
  return _SuccessEntity.fromJson(json);
}

/// @nodoc
mixin _$SuccessEntity {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessEntityCopyWith<SuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessEntityCopyWith<$Res> {
  factory $SuccessEntityCopyWith(
          SuccessEntity value, $Res Function(SuccessEntity) then) =
      _$SuccessEntityCopyWithImpl<$Res, SuccessEntity>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SuccessEntityCopyWithImpl<$Res, $Val extends SuccessEntity>
    implements $SuccessEntityCopyWith<$Res> {
  _$SuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessEntityImplCopyWith<$Res>
    implements $SuccessEntityCopyWith<$Res> {
  factory _$$SuccessEntityImplCopyWith(
          _$SuccessEntityImpl value, $Res Function(_$SuccessEntityImpl) then) =
      __$$SuccessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessEntityImplCopyWithImpl<$Res>
    extends _$SuccessEntityCopyWithImpl<$Res, _$SuccessEntityImpl>
    implements _$$SuccessEntityImplCopyWith<$Res> {
  __$$SuccessEntityImplCopyWithImpl(
      _$SuccessEntityImpl _value, $Res Function(_$SuccessEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessEntityImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessEntityImpl implements _SuccessEntity {
  const _$SuccessEntityImpl({this.message = ''});

  factory _$SuccessEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessEntityImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SuccessEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessEntityImplCopyWith<_$SuccessEntityImpl> get copyWith =>
      __$$SuccessEntityImplCopyWithImpl<_$SuccessEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessEntityImplToJson(
      this,
    );
  }
}

abstract class _SuccessEntity implements SuccessEntity {
  const factory _SuccessEntity({final String message}) = _$SuccessEntityImpl;

  factory _SuccessEntity.fromJson(Map<String, dynamic> json) =
      _$SuccessEntityImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessEntityImplCopyWith<_$SuccessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
