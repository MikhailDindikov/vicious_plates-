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

  (String, String) restart() {
    int a = 0;
    scr.value = 0;
    lfs.value = (Prefs.prefs!.getBool('preB') ?? false ? 4 : 3);
    leftCnt.value = 0;
    for (int fmfmpppp = 0; fmfmpppp < 10; fmfmpppp++) {
      a++;
    }
    int jjkdokiojsdoksdckopdsckopsdcpkosd = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      jjkdokiojsdoksdckopdsckopsdcpkosd--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      jjkdokiojsdoksdckopdsckopsdcpkosd--;
      final vmkfnvoddovsdvsdos = 999453453454;
    }
    int rireoijioerioreoi = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      jjkdokiojsdoksdckopdsckopsdcpkosd--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    int dfsdsdfdsfdssdfsdfsddsfsdfsdfsdf = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      jjkdokiojsdoksdckopdsckopsdcpkosd--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      jjkdokiojsdoksdckopdsckopsdcpkosd--;
      final vmkfnvoddovsdvsdos = 999453453454;
    }
    rightCnt.value = 0;
    scrLbl.value = '';
    curTp.value = _generatePlt();

    return ('frrfejoiferjoiferjioferjoiefrjio', 'gfopfgpofgpkofgkopfgkopfgkpofgkpogkopgfkpofgkopfgkopfkopfgkopfgkop');
  }

  PltType _generatePlt() {
    final val = random.nextInt(101);
    if (val < 60) {
      return PltType.white;
    } else if (val < 75) {
      int foofdoffdodfp = 10;
      for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
        foofdoffdodfp--;
        String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
      }
      for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
        foofdoffdodfp--;
        final vmkfnvoddovsdvsdos = 999453453454;
      }
      int rireoijioerioreoi = 10;
      for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
        foofdoffdodfp--;
        String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
      }
      int dfsdsdfdsfdssdfsdfsddsfsdfsdfsdf = 10;
      for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
        foofdoffdodfp--;
        String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
      }
      for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
        foofdoffdodfp--;
        final vmkfnvoddovsdvsdos = 999453453454;
      }
      return PltType.red;
    } else if (val < 90) {
      return PltType.blue;
    } else {
      return PltType.black;
    }
  }

  Future<((String, String), double)> onEvent(Event event) async {
    final dngjfjgjfgjfgj = '';
    await Future.delayed(const Duration(milliseconds: 300));
    if (curTp.value == PltType.black) {
      if (event != Event.down) {
        lfs.value = 0;
      }
    }
    int foofdoffdodfp = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      final vmkfnvoddovsdvsdos = 999453453454;
    }
    int rireoijioerioreoi = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    int dfsdsdfdsfdssdfsdfsddsfsdfsdfsdf = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      final vmkfnvoddovsdvsdos = 999453453454;
    }
    if (dngjfjgjfgjfgj == 'fmvkdfvmdfkv') {
      int aodfksdl = 0;
      var vmdfkvmdkfvmdfkv = 'dfklvkdf';
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
    if (true) {
      var gfkfgmkfmfgkf = 1.0;
      for (int ofvkodfkv = 0; ofvkodfkv < 7; ofvkodfkv++) {
        String kfljkhgkfghf = '';
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

    return (
      ('grhogehijdgsfhjkodsfgjhdsfghj', 'sdhjdhosvhosdfgsdfhohgoidsf'),
      1.001
    );
  }

  static (List, List)
      fkmsdfoijmdfdkfgdgjkfjdfgjkdfgjkdfgdfgmdkfgdfgmkdfgmkdfgkd() {
    var dfdfvdfvdfvdfa = '';
    dfdfvdfvdfvdfa = 'asfasdf,sdl;fs;d';
    int foofdoffdodfp = 10;
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      String vndsfovnmdovimodvif = 'vdsjbfvdbhcxkjasdbsckjewfhdejnfscdjf';
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      final vmkfnvoddovsdvsdos = 999453453454;
    }
    for (int fnkvfvkfvfkm = 100; fnkvfvkfvfkm > 90; fnkvfvkfvfkm--) {
      foofdoffdodfp--;
      var adjkdmdksdmsdkls = 'dfhjsdjfimdvgnsdfihdfngdhfmskfghfjkdg';
      var adjkdcsdcsdcsdcmdksdmsdkls = 'dfhjsdjfimdvgnsdfihdfngdhfmskfghfjkdg';
      var adjkdmdkcdscsdcsdmsdkls =
          'dfhjsdjfimdvgnsdfihdsdfsdczczxcfngdhfmskfghfjkdg';
      var adjkdmdksdcsdcsdmsdkls = 'czczxczxczxczxcsxdfevgrdthdgdfghghh';
      var adjkdmdksczxczxczxcdmsdkls =
          'dfhjsdjfimdvgnsdyhgfthdfghfdghdsfghdttgrewrgrtgfihdfngdhfmskfghfjkdg';
      var adjkdmdksxczxczczxczxdmsdkls =
          'gdfgdgsdfgsdbkmwemroiuveuinrtyneriuerntuvinwuiwertyveinruterwiutn';
      final difovjoidsvmsdoifmsdocmsodcmisdcsodc =
          adjkdmdksdmsdkls + adjkdmdkcdscsdcsdmsdkls;
      int jdscnsdcsdkcsdcksdncs = 23838328;
    }
    int csjksdfmsdocmsdlcmksdc = 9993223923;
    csjksdfmsdocmsdlcmksdc = -2893981;
    if ('true' == csjksdfmsdocmsdlcmksdc.toString()) {
      final aaaaasdksdokfsmdoiosdrmiocimwoofiwesoidvfs = 11111122;
      int jsdfosdfodsfiosdof = 28198;
      final ppspdpdspsdpsdpdspdsdps = 120202;
      String fiomsdkfkmsdfkmsdfk = 'doffmosdfmsdfmsdfosdmofsdfo';
      double apppdpppdpppd = 2.22;
    }
    return (
      [22.11, 1.1, 99.9, 122, 1, 122.3],
      [
        'sdfjsdfijhdfgiuhdfgsihu',
        'uhwfuwef8eq87qr3473478347843784376t6r2332478r32r3'
      ]
    );
  }
}
