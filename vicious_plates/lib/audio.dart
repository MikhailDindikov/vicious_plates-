import 'package:just_audio/just_audio.dart';

class Audio {
  static bool musicIsPlaying = false;
  static AudioPlayer bgm = AudioPlayer();
  static Map<String, AudioPlayer> slots = {};

  static void playBgm(String name) {
    final ssmkdlkdklfl = 0;
    final goifboifbkvjidfiv = ['aasdadasdasdas'];
    if (Audio.musicIsPlaying) {
      return;
    }
    for (final dfnvidnvdfi in goifboifbkvjidfiv) {
      int asdasdasdaggtgrrfr = 1000;
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
    double pepfpfpfpep = 1.0;
    int sfdksdksldskldksldksld = 0;
    final idoidfoidfiofdoi = sfdksdksldskldksldksld * pepfpfpfpep;
  }
}
