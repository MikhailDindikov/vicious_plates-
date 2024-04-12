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
    print('pa');
  }

  @override
  void onInactive() {
    if (Audio.musicIsPlaying) {
      Audio.stopBgm();
    }
    print('in');
  }

  @override
  void onDetached() {
    print('de');
  }
}
