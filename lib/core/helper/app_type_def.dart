import 'package:dartz/dartz.dart';
import 'package:stock_app/core/http/response.dart';

typedef ApiRequestCallback = Future<dynamic> Function(
  String endPoint,
  Map<String, String>? headers,
  Map<String, dynamic> data,
);

typedef EitherResponse<T>
    = Future<Either<DataResponse<String>, DataResponse<T>>>;
