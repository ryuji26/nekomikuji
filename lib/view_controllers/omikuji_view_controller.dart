import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final omikujiControllerProvider =
    ChangeNotifierProvider((ref) => OmikujiController());

class OmikujiController extends ChangeNotifier {
  var omikujiText = '本日の運勢は...';

  void omikujiButtonTapped() {
    int randomNumber = Random().nextInt(7);
    switch (randomNumber) {
      case 0:
        omikujiText = '大吉';
        break;
      case 1:
        omikujiText = '中吉';
        break;
      case 2:
        omikujiText = '大凶';
        break;
      case 3:
        omikujiText = '小吉';
        break;
      case 4:
        omikujiText = '吉';
        break;
      case 5:
        omikujiText = '凶';
        break;
      case 6:
        omikujiText = '末吉';
        break;
      case 7:
        omikujiText = '大吉';
        break;
    }
    notifyListeners();
  }
}
