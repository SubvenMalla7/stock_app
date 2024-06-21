import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:stock_app/core/domain/entity/success/success_entity.dart';
import 'package:stock_app/core/helper/app_type_def.dart';
import 'package:stock_app/core/helper/log_helper.dart';
import 'package:stock_app/core/http/response.dart';

abstract class Response {
  static String defaultErrorMessage = "Internal Server Error";

  static String defaultConnectionError = "No internet connection";

  static String getErrorMessage(Object error) {
    String errorMessage;
    if (error is SocketException) {
      errorMessage = Response.defaultConnectionError;
    } else {
      errorMessage = Response.defaultErrorMessage;
    }
    return errorMessage;
  }
}

EitherResponse handleNetworkCall(request, [dynamic fromJsonModel]) async {
  final response = await request;
  if (response.statusCode >= 200 && response.statusCode < 300) {
    try {
      if (fromJsonModel != null) {
        return Right(DataResponse.success(fromJsonModel(response.data)));
      } else {
        if (response!.data == '') {
          return Right(DataResponse.success(const SuccessEntity()));
        } else {
          SuccessEntity data;
          try {
            final dynamic object = response!.data;
            data = SuccessEntity.fromJson(object as Map<String, dynamic>);
          } catch (e) {
            return Right(
                DataResponse.success(const SuccessEntity(message: '')));
          }
          return Right(DataResponse.success(data, message: data.message));
        }
      }
    } catch (e) {
      // Handle any exceptions that may occur during JSON decoding

      printLog("Internal Server Error.");
      return Left(DataResponse.error("Internal Server Error."));
    }
  } else {
    // final dynamic object = response!.data;
    // var data;
    // try {
    //   data = ErrorEntity.fromJson(object as Map<String, dynamic>);
    // } catch (e) {
    //   printLog(
    //       "*** Error parsing response data in error entity: response.dart file \n ${e.toString()}");
    //   data = const ErrorEntity(
    //       errors: [ErrorData(title: "500", detail: "Something went wrong")]);
    // }
    return Left(DataResponse.error(''));
  }
}
