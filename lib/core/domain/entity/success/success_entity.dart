import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_entity.freezed.dart';

part 'success_entity.g.dart';

@freezed
abstract class SuccessEntity with _$SuccessEntity {
  const factory SuccessEntity({
    @Default('') String message,
  }) = _SuccessEntity;

  factory SuccessEntity.fromJson(Map<String, dynamic> json) =>
      _$SuccessEntityFromJson(json);
}
