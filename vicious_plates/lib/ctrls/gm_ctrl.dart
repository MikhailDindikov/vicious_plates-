import 'dart:math';

import 'package:get/state_manager.dart';
import 'package:vicious_plates/prefs.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/cur_plt.dart';

enum PltType { red, white, blue, black }

class GmCtrl extends GetxController {
  final random = Random();
  final RxInt scr = 0.obs;
  final RxInt lfs = (Prefs.prefs!.getBool('preB') ?? false ? 4 : 3).obs;
  final RxInt leftCnt = 0.obs;
  final RxInt rightCnt = 0.obs;
  final RxString scrLbl = ''.obs;
  late final Rx<PltType> curTp;

  @override
  void onInit() {
    curTp = _generatePlt().obs;
    super.onInit();
  }

  void restart() {
    scr.value = 0;
    lfs.value = (Prefs.prefs!.getBool('preB') ?? false ? 4 : 3);
    leftCnt.value = 0;
    rightCnt.value = 0;
    scrLbl.value = '';
    curTp.value = _generatePlt();
  }

  PltType _generatePlt() {
    final val = random.nextInt(101);
    if (val < 60) {
      return PltType.white;
    } else if (val < 75) {
      return PltType.red;
    } else if (val < 90) {
      return PltType.blue;
    } else {
      return PltType.black;
    }
  }

  Future<void> onEvent(Event event) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (curTp.value == PltType.black) {
      if (event != Event.down) {
        lfs.value = 0;
      }
    }
    if (curTp.value == PltType.red) {
      if (event == Event.left) {
        scr.value += 2;
        scrLbl.value = '+ 2';
        leftCnt.value += 1;
      } else {
        lfs.value -= 1;
      }
    }
    if (curTp.value == PltType.blue) {
      if (event == Event.right) {
        scr.value += 2;
        scrLbl.value = '+ 2';
        rightCnt.value += 1;
      } else {
        lfs.value -= 1;
      }
    }
    if (curTp.value == PltType.white) {
      if (event == Event.tap) {
        scr.value += 1;
        scrLbl.value = '+ 1';
      } else {
        lfs.value -= 1;
      }
    }

    if (lfs.value > 0) {
      curTp.value = _generatePlt();
    }
  }
}
