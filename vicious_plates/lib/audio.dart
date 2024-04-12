import 'package:just_audio/just_audio.dart';

class Audio {
  static bool musicIsPlaying = false;
  static AudioPlayer bgm = AudioPlayer();
  static Map<String, AudioPlayer> slots = {};

  static void playBgm(String name) {
    if (Audio.musicIsPlaying) {
      return;
    }
    Audio.musicIsPlaying = true;
    bgm
      ..setLoopMode(LoopMode.one)
      ..setAsset('assets/$name')
      ..play();
  }

  static void stopBgm() {
    Audio.musicIsPlaying = false;
    bgm.stop();
  }
}
