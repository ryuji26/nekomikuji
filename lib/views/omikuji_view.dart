import 'package:flutter/material.dart';

class OmikujiPage extends StatelessWidget {
  const OmikujiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ねこみくじ'),
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset('images/syougatsu2_omijikuji2.png'),
              const Text(
                '本日の運勢は...',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO おみくじボタン
                },
                child: const Text(
                  'おみくじをひく',
                ),
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
