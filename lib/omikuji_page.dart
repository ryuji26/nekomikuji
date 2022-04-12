import 'package:flutter/material.dart';

class OmikujiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ねこみくじ'),
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              Text('ここに画像を表示'),
              ElevatedButton(
                onPressed: () {
                  // TODO おみくじボタン
                },
                child: Text(
                  'おみくじをひく',
                ),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
