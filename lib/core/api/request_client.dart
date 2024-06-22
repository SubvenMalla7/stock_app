import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_app/app/view/app.dart';
import 'package:stock_app/core/api/request.dart';
import 'package:stock_app/core/domain/entity/error/error_entity.dart';
import 'package:stock_app/core/helper/log_helper.dart';
import 'package:stock_app/core/service/internet_connection.dart';
import 'package:stock_app/core/widget/text_widgets.dart';
import 'package:stock_app/gen/colors.gen.dart';

class RequestClient {
  factory RequestClient() {
    _instance ??= RequestClient._internal();
    return _instance!;
  }

  RequestClient._internal() {
    BaseOptions options = BaseOptions(
        receiveDataWhenStatusError: true,
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30), // 30 seconds
        receiveTimeout: const Duration(seconds: 30) // 30 seconds
        );
    _client = Dio(options);
    init();
    _client.options.requestEncoder = (string, request) => utf8.encode(string);
  }

  static const String userAgent = 'User-Agent';
  static const String contentType = 'Content-Type';
  static const String accept = 'Accept';

  static RequestClient? _instance;
  late Dio _client;

  List<Cookie> cookies = [];
  bool isRefreshTokenHit = false;
  bool isSessionExpiredShown = false;
  bool isServerShown = false;
  bool isServerRejectShown = false;

  init() async {
    _client.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    _client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options);
        },
        onResponse: (r, handler) {
          handler.next(r);
        },
        onError: (error, handler) async {
          if (error.response == null) {
            apiHandleFunction(
                Response(
                  requestOptions: RequestOptions(),
                  statusCode: 500,
                  statusMessage: 'Internal Server Error',
                ),
                '');
          } else if (error.response?.statusCode == 500 ||
              error.response?.statusCode == 502) {
            handler.reject(error);
          } else {
            handler.next(error);
          }
        },
      ),
    );
  }

  static Map<String, String> createHeaderWithCookie(String deviceID) {
    final authHeader = <String, String>{};
    authHeader['x-request-origin'] = 'mobile';
    authHeader['Content-Type'] = 'application/json';
    authHeader['Connection'] = 'keep-alive';
    authHeader['Accept'] = 'application/json';
    authHeader['locale'] = 'en';
    authHeader['deviceCode'] = deviceID;

    return authHeader;
  }

  Future<Response?> put(
      {required String endPoint,
      Map<String, String>? headers,
      dynamic data,
      Map<String, dynamic>? queryParameters}) async {
    Response response;
    try {
      bool isInternet = await CheckInternetConnection().hasInternet();

      if (isInternet) {
        Map<String, dynamic>? headers = Request.createHeader();
        print(headers);
        response = await _client.put(
          Request.createUrl(endPoint),
          options: Options(
            headers: headers,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ),
          data: data != null ? jsonDecode(data.toString()) : {},
          queryParameters: queryParameters,
        );

        return response; // Call the function here
      } else {
        response = Response(
          requestOptions: RequestOptions(),
          statusCode: 508,
          statusMessage: '',
        );
        await apiHandleFunction(response, endPoint);
        return response;
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      debugPrint(e.response.toString());

      await apiHandleFunction(e.response!, endPoint);
      return e.response;
    }
  }

  Future<Response?> postJson({
    required String endPoint,
    Map<String, String>? headers,
    dynamic data,
    dynamic formData,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;
    try {
      bool isInternet = await CheckInternetConnection().hasInternet();

      if (isInternet) {
        Map<String, dynamic>? headers = Request.createHeader();
        print(headers);
        response = await _client.post(
          Request.createUrl(endPoint),
          options: Options(
            headers: headers,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ),
          data: data != null ? jsonDecode(data.toString()) : formData ?? {},
          queryParameters: queryParameters,
        );

        return response; // Call the function here
      } else {
        response = Response(
          requestOptions: RequestOptions(),
          statusCode: 508,
          statusMessage: '',
        );
        await apiHandleFunction(response, endPoint);
        return response;
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      debugPrint(e.response.toString());

      await apiHandleFunction(e.response!, endPoint);
      return e.response;
    }
  }

  Future<Response?> get({
    required String endPoint,
    Map<String, String>? headers,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;
    try {
      bool isInternet = await CheckInternetConnection().hasInternet();

      if (isInternet) {
        response = await _client.get(Request.createUrl(endPoint),
            options: Options(
              headers: Request.createHeader(),
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json,
            ),
            data: data,
            queryParameters: queryParameters);
        await apiHandleFunction(response, endPoint);
        return response;
      } else {
        response = Response(
          requestOptions: RequestOptions(),
          statusCode: 508,
          statusMessage: '',
        );
        await apiHandleFunction(response, endPoint);
        return response;
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      debugPrint(e.response.toString());
      await apiHandleFunction(e.response!, endPoint);
      return e.response;
    }
  }

  Future<Response?> delete(
      {required String endPoint,
      Map<String, String>? headers,
      dynamic data,
      Map<String, dynamic>? queryParameters}) async {
    Response response;
    try {
      bool isInternet = await CheckInternetConnection().hasInternet();
      if (isInternet) {
        Map<String, dynamic>? headers = Request.createHeader();
        print(headers);
        response = await _client.delete(
          Request.createUrl(endPoint),
          options: Options(
            headers: headers,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ),
          data: data != null ? jsonDecode(data.toString()) : {},
          queryParameters: queryParameters,
        );

        return response; // Call the function here
      } else {
        response = Response(
          requestOptions: RequestOptions(),
          statusCode: 508,
          statusMessage: '',
        );
        await apiHandleFunction(response, endPoint);
        return response;
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      debugPrint(e.response.toString());

      await apiHandleFunction(e.response!, endPoint);
      return e.response;
    }
  }

  Future<void> apiHandleFunction(Response<dynamic> response, String url) async {
    switch (response.statusCode) {
      case 401:
        final dynamic object = response.data;
        final data = ErrorEntity.fromJson(object as Map<String, dynamic>);
        showErrorPopup(navigatorKey.currentContext!,
            title: data.errors.first.title, message: data.errors.first.detail);

      case 403 || 404 || 400 || 429 || 422:
        final dynamic object = response.data;
        final data = ErrorEntity.fromJson(object as Map<String, dynamic>);
        showErrorPopup(navigatorKey.currentContext!,
            title: data.errors.first.title, message: data.errors.first.detail);

      case 508:
        printLog('No Internet Connection');

      case 502 || 500 || 503:
        showErrorPopup(navigatorKey.currentContext!,
            title: "Error", message: "Internal Server Error");

      default:
        break;
    }
  }

  void showErrorPopup(
    BuildContext context, {
    required String title,
    required String message,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: BuildText(
            text: title,
            fontSize: 14.sp,
            color: ColorName.primaryColor,
            fontWeight: FontWeight.w600,
          ),
          content: BuildText(
            text: message,
            fontSize: 12.sp,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
