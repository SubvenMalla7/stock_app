import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';

part 'meta_entity.g.dart';

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required Pagination pagination,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @Default(0) int page,
    @Default(0) int totalPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
