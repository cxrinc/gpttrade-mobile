import '../util/http_client.dart';

class TopApi {
  static Future<void> getInfomationData(HttpClientCallback callback) async {
    return HttpClient.post("/action/enduser/getSummaryReport", "", callback);
  }
}
