import 'package:dio/dio.dart';
import 'package:dream_strategy_app/apis/responses/top_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'top_client.g.dart';

@RestApi(baseUrl: "/top")
abstract class TopClient {
  factory TopClient(Dio dio, {String? baseUrl}) = _TopClient;

  @POST("/action/enduser/getSummaryReport")
  Future<SummaryReport> getSummaryReport();
}
