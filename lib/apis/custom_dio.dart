import 'package:dio/dio.dart';
import 'package:dream_strategy_app/config/env_config.dart';

Dio _dio() {
  BaseOptions options = BaseOptions(
    baseUrl: '${EnvConfig.siteUrl}/v3/api',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 5),
  );

  final dio = Dio(options);

  dio.interceptors.add(
    LogInterceptor(responseBody: true, requestBody: true, requestHeader: true),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (
        RequestOptions options,
        RequestInterceptorHandler handler,
      ) async {
        options.headers = {
          ...options.headers,
          "Content-Type": "application/json",
          "Bitfin-Platform": "wap",
          "Bitfin-Version": "1.0.0",
        };
        return handler.next(options);
      },
    ),
  );

  return dio;
}

// export
final customDio = _dio();
