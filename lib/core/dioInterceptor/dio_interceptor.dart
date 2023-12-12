import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DioInterceptor {
  final Dio api;

  Dio get getDio => api;
  String? accessToken;

  final Box _storage = Hive.box('tokens');

  DioInterceptor(this.api) {
    accessToken = _storage.get("access");

    log("Token: $accessToken");
    api.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.connectTimeout = const Duration(seconds: 30);
      options.receiveTimeout = const Duration(seconds: 30);

      options.baseUrl = 'http://77.243.80.52:8000/api/v1/';
      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
        options.headers['Accept'] = 'application/json';
      }

      return handler.next(options);
    }, onError: (DioError error, handler) async {
      if (error.response?.statusCode == 401) {
        log("TEST");
        if (await refreshToken()) {
          return handler.resolve(await _retry(error.requestOptions));
        }
      }
      return handler.next(error);
    }));
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return api.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  Future<bool> refreshToken() async {
    final token = await _storage.get('access');

    final response =
        await api.get('refresh', queryParameters: {'token': token});

    if (response.statusCode == 200) {
      log("SUCCESS");
      inspect(response.data);
      accessToken = response.data['data'];
      _storage.put('access', accessToken);
      return true;
    } else {
      log("FAILURE");
      // refresh token is wrong
      accessToken = null;
      _storage.clear();
      return false;
    }
  }
}
