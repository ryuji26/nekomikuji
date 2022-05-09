import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'omikuji_model.dart';

class OmikujiPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final omikujiController = ref.watch(omikujiControllerProvider);
    String imageName = omikujiController.imageName;

    return Scaffold(
        appBar: AppBar(
          title: const Text('ねこみくじ'),
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset('$imageName'),
              Text(
                omikujiController.omikujiText,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: omikujiController.count > 0
                    ? null
                    : () {
                        omikujiController.omikujiButtonTapped();
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
