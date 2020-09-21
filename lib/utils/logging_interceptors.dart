import 'dart:async';

import 'package:dio/dio.dart';

class LoggingInterceptors extends Interceptor {

  @override
  Future<FutureOr> onRequest(RequestOptions options) async {
    print(
      "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"" + (options.baseUrl ?? "") + (options.path ?? "")}");
    print("Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));
    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }

    
    return super.onRequest(options);
  }

  @override
  Future onError(DioError err) {
    // TODO: implement onError
    return super.onError(err);
  }

  @override
  Future onResponse(Response response) {
    // TODO: implement onResponse
    return super.onResponse(response);
  }
}