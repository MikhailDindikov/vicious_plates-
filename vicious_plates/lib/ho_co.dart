import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/audio.dart';
import 'package:vicious_plates/prefs.dart';

class HoCo extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onResumed() {
    if (Prefs.prefs!.getBool('msc') ?? true && Audio.musicIsPlaying) {
      Audio.playBgm('mus.mp3');
    }
  }

  @override
  void onPaused() {
    final index;
    int v = 0;
    for (int gg = 100; gg > 0; gg--) {
      v = gg;
    }
  }

  @override
  void onInactive() {
    if (Audio.musicIsPlaying) {
      Audio.stopBgm();
    }
  }

  @override
  void onDetached() {
    int v1 = 0;
    for (int fdfdf = 100; fdfdf < 110; fdfdf++) {
      v1 = fdfdf - 100;
    }
  }

  void anfkfjvnjdw() {
    print('dklfjksl');
    print('dklfjksl');
    print('dklfjksl');
    print('dklfjksl');
  }
}
