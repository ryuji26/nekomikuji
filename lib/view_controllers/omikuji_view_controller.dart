import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_storage/firebase_storage.dart';

final omikujiControllerProvider =
    ChangeNotifierProvider((ref) => OmikujiController());

class OmikujiController extends ChangeNotifier {
  String imageName = 'images/syougatsu2_omijikuji2.png';
  var count = 0;

  var omikujiText = '本日の運勢は...';

  void omikujiButtonTapped() {
    count += 1;
    int randomNumber = Random().nextInt(7);
    switch (randomNumber) {
      case 0:
        omikujiText = '大吉';
        imageName = 'images/2014-08-23_19-49-25_657.jpeg';
        break;
      case 1:
        omikujiText = '吉';
        imageName = 'images/2014-09-06_23-43-46_000.jpeg';
        break;
      case 2:
        omikujiText = '中吉';
        imageName = 'images/2014-11-21_18-36-42_701.jpeg';
        break;
      case 3:
        omikujiText = '小吉';
        imageName = 'images/2014-12-25_21-02-50_672.jpeg';
        break;
      case 4:
        omikujiText = '末吉';
        imageName = 'images/2016-10-31_20-36-46_793.jpeg';
        break;
      case 5:
        omikujiText = '凶';
        imageName = 'images/2017-01-08_16-58-01_444.jpeg';
        break;
      case 6:
        omikujiText = '大凶';
        imageName = 'images/2017-11-20_20-28-32_384.jpeg';
        break;
    }
    notifyListeners();
  }
}
