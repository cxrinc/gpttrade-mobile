// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryReportImpl _$$SummaryReportImplFromJson(Map<String, dynamic> json) =>
    _$SummaryReportImpl(
      date: (json['date'] as num).toInt(),
      totalUserCount: (json['totalUserCount'] as num).toInt(),
      activeUserCount: (json['activeUserCount'] as num).toInt(),
      totalCapital: (json['totalCapital'] as num).toDouble(),
      totalTradingValue: (json['totalTradingValue'] as num).toDouble(),
      createTime: DateTime.parse(json['createTime'] as String),
      updateTime: DateTime.parse(json['updateTime'] as String),
    );

Map<String, dynamic> _$$SummaryReportImplToJson(_$SummaryReportImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'totalUserCount': instance.totalUserCount,
      'activeUserCount': instance.activeUserCount,
      'totalCapital': instance.totalCapital,
      'totalTradingValue': instance.totalTradingValue,
      'createTime': instance.createTime.toIso8601String(),
      'updateTime': instance.updateTime.toIso8601String(),
    };
