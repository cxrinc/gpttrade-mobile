import 'package:freezed_annotation/freezed_annotation.dart';

part "top_response.freezed.dart";
part "top_response.g.dart";

@freezed
class SummaryReport with _$SummaryReport {
  const factory SummaryReport({
    required final int date,
    required final int totalUserCount,
    required final int activeUserCount,
    required final double totalCapital,
    required final double totalTradingValue,
    required final DateTime createTime,
    required final DateTime updateTime,
  }) = _SummaryReport;

  factory SummaryReport.fromJson(Map<String, dynamic> json) =>
      _$SummaryReportFromJson(json);
}
