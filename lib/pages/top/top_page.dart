import 'package:dream_strategy_app/widgets/top/information_widget.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "取引所との連携により、資金を効果的に運用AIやプロトレーダーたちの戦略を活用したストラテジーや、自身が設定したオーダーやアルゴリズムに基づいて、24時間トレーディングを実現。誰でも簡単に始められる、自動売買プラットフォームです。現在連携可能な取引所はRakutenWalletの証拠金取引所となります。登録がお済みでない場合RakutenWalletサイトより口座開設をしてください。 ",
            ),
            Padding(padding: const EdgeInsets.all(8.0), child: Divider()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('GPT-Trade Information')),
            ),
            InformationWidget(),
          ],
        ),
      ),
    );
  }
}
