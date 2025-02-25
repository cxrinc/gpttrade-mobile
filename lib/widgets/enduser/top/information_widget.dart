import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:dream_strategy_app/apis/top_api.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({super.key});

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  String _totalUserCount = '-';
  String _activeUserCount = '-';
  String _totalCapital = '-';
  String _totalTradingValue = '-';

  @override
  void initState() {
    super.initState();

    TopApi.getInfomationData((data) {
      if (data["bfStatus"] == "ok") {
        setState(() {
          _totalUserCount = NumberFormat.decimalPattern().format(
            data["reportSummary"]["totalUserCount"],
          );
          _activeUserCount = NumberFormat.decimalPattern().format(
            data["reportSummary"]["activeUserCount"],
          );
          _totalCapital = NumberFormat.decimalPattern().format(
            data["reportSummary"]["totalCapital"],
          );
          _totalTradingValue = NumberFormat.decimalPattern().format(
            data["reportSummary"]["totalTradingValue"],
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("総登録ユーザー"),
                    Row(
                      children: [
                        Text(
                          _totalUserCount,
                          style: TextStyle(color: Color(0xff00a5a7)),
                        ),
                        Text(" 人"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("アクティブユーザー"),
                    Row(
                      children: [
                        Text(
                          _activeUserCount,
                          style: TextStyle(color: Color(0xff00a5a7)),
                        ),
                        Text(" 人"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ユーザー総証拠金"),
                    Row(
                      children: [
                        Text(
                          _totalCapital,
                          style: TextStyle(color: Color(0xff00a5a7)),
                        ),
                        Text(" JPY"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("売買代金(24h)"),
                    Row(
                      children: [
                        Text(
                          _totalTradingValue,
                          style: TextStyle(color: Color(0xff00a5a7)),
                        ),
                        Text(" JPY"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
