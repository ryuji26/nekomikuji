import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final omikujiControllerProvider =
    ChangeNotifierProvider((ref) => OmikujiController());

class OmikujiController extends ChangeNotifier {
  var omikujiText = '本日の運勢は...';

  void omikujiButtonTapped() {
    omikujiText = "変更したよ";
    notifyListeners();
  }
}
