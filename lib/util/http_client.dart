import 'package:dio/dio.dart';
import 'package:dream_strategy_app/config/env_config.dart';

typedef HttpClientCallback = void Function(dynamic data);

class HttpClient {
  Dio? _dio;

  HttpClient() {
    BaseOptions options = BaseOptions(
      baseUrl: '${EnvConfig.siteUrl}/v3/api',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
    );

    _dio = Dio(options);

    _dio!.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ),
    );
  }

  Dio getDio() {
    return _dio!;
  }

  static Future<void> post(
    String url,
    String body,
    HttpClientCallback callback,
  ) async {
    try {
      final httpClient = HttpClient();

      Options options = Options(
        headers: {
          "Content-Type": "application/json",
          "Bitfin-Platform": "wap",
          "Bitfin-Version": "1.0.0",
        },
      );

      Response response = await httpClient.getDio().post(url, options: options);

      callback(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
