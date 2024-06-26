import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vicious_plates/b_plt_widget.dart';
import 'package:vicious_plates/ctrls/gm_ctrl.dart';
import 'package:vicious_plates/glavni_screen.dart';
import 'package:vicious_plates/prefs.dart';
import 'package:vicious_plates/r_plt_widget.dart';
import 'package:vicious_plates/some_button_on_some_screen.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/cur_plt.dart';

import 'audio.dart';
import 'some_buttons_and_some_widgets/text_with_shadow.dart';

class GmScr extends StatefulWidget {
  final int secs;
  const GmScr({required this.secs, super.key});

  @override
  State<GmScr> createState() => _GmScrState();
}

class _GmScrState extends State<GmScr> {
  final RxInt _curt = 0.obs;
  final RxBool _pause = false.obs;
  Timer? timer;
  final _ct = Get.put(GmCtrl());

  (
    (String, int),
    (bool, bool)
  ) eoprpoweorewopriweiroweopiriopweriipwoiprioipwiopipoeipoipoiepiopiopewiopiopweiopiopewipo() {
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
    return (('uhfirfejiffreiref', foofdoffdodfp), (true, false));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  String getPrSt() {
    if (widget.secs == 15) {
      return '15sec';
    } else if (widget.secs == 30) {
      return '30sec';
    } else if (widget.secs == 60) {
      return '60sec';
    } else {
      return '120sec';
    }
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (!_pause.value) {
          _curt.value++;
        }
        if (_curt.value == widget.secs) {
          final val = Prefs.prefs!.getStringList(getPrSt()) ?? [];
          final min = int.parse((val.lastOrNull ?? ':0').split(':').last);
          if (val.length < 15 || min < _ct.scr.value) {
            if (val.length == 15) {
              val.removeLast();
            }
            final date =
                DateFormat('dd.MM.yyyy').format(DateTime.now()).toString();
            val.add('$date:${_ct.scr.value}');
            if (val.length > 1) {
              val.sort((a, b) {
                int av = int.parse(a.split(':').last);
                int bv = int.parse(b.split(':').last);
                return bv.compareTo(av);
              });
            }
            Prefs.prefs!.setStringList(getPrSt(), val);
          }
          timer.cancel();
          scoreDlg();
        }
      },
    );
  }

  void stgsDlg() {
    RxBool liMu = (Prefs.prefs!.getBool('msc') ?? true).obs;
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: IntrinsicHeight(
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 242, 234, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 0,
                        spreadRadius: 0,
                        color: Color.fromRGBO(217, 202, 192, 1),
                      ),
                    ],
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                liMu.toggle();
                                if (liMu.value) {
                                  Audio.playBgm('mus.mp3');
                                  Prefs.prefs!.setBool('msc', true);
                                } else {
                                  Audio.stopBgm();
                                  Prefs.prefs!.setBool('msc', false);
                                }
                              },
                              child: Stack(
                                key: UniqueKey(),
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/msc.png',
                                    filterQuality: FilterQuality.high,
                                    height: 50,
                                    width: 50,
                                  ),
                                  Obx(
                                    () => Visibility(
                                        visible: !liMu.value,
                                        child: Transform(
                                          alignment: FractionalOffset.center,
                                          transform: Matrix4.identity()
                                            ..rotateZ(45 * 3.14159265 / 180),
                                          child: Container(
                                            height: 50,
                                            width: 4,
                                            color: Color.fromRGBO(255, 0, 0, 1),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            TextWithShadow(
                              'PAUSE'.toUpperCase(),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              backColor: Color.fromRGBO(0, 0, 0, 1),
                              borderColor: Color.fromRGBO(0, 0, 0, 1),
                            ),
                            GestureDetector(
                              onTap: Get.back,
                              child: Image.asset(
                                'assets/crclcls.png',
                                filterQuality: FilterQuality.high,
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                  timer!.cancel();
                                  _curt.value = 0;
                                  _ct.restart();
                                  sleep(const Duration(seconds: 1));
                                  startTimer();
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'Retry'.toUpperCase(),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(21, 67, 186, 1),
                                    borderColor: Color.fromRGBO(30, 74, 229, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(() => GlavniScreen(
                                        onMsc:
                                            Prefs.prefs!.getBool('msc') ?? true,
                                      ));
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'EXIT'.toUpperCase(),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(21, 67, 186, 1),
                                    borderColor: Color.fromRGBO(30, 74, 229, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).then((value) => _pause.value = false);
  }

  void scoreDlg() {
    Audio.plaOnce('end.mp3');
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: IntrinsicHeight(
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(254, 242, 234, 1),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 0,
                        spreadRadius: 0,
                        color: Color.fromRGBO(217, 202, 192, 1),
                      ),
                    ],
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWithShadow(
                              'YOUR SCORE: ${_ct.scr.value}'.toUpperCase(),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              backColor: Color.fromRGBO(0, 0, 0, 1),
                              borderColor: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                  timer!.cancel();
                                  _curt.value = 0;
                                  _ct.restart();
                                  sleep(const Duration(seconds: 1));
                                  startTimer();
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'Retry'.toUpperCase(),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(21, 67, 186, 1),
                                    borderColor: Color.fromRGBO(30, 74, 229, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(() => GlavniScreen(
                                        onMsc:
                                            Prefs.prefs!.getBool('msc') ?? true,
                                      ));
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'EXIT'.toUpperCase(),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(21, 67, 186, 1),
                                    borderColor: Color.fromRGBO(30, 74, 229, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void infoDlg() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 242, 234, 1),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 0,
                  spreadRadius: 0,
                  color: Color.fromRGBO(217, 202, 192, 1),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      TextWithShadow(
                        'INFO'.toUpperCase(),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        backColor: Color.fromRGBO(0, 0, 0, 1),
                        borderColor: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      GestureDetector(
                        onTap: Get.back,
                        child: Image.asset(
                          'assets/crclcls.png',
                          filterQuality: FilterQuality.high,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _pltInfo('assets/wp.png', 'TAP\n', '+1'),
                            _pltInfo('assets/rp.png', 'SWIPE\nLEFT', '+2'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _pltInfo('assets/bp.png', 'SWIPE\nRIGHT', '+2'),
                            _pltInfo('assets/blp.png', 'SWIPE\nDOWN', ''),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 82,
                  ),
                  Center(
                    child: Text(
                      'Properly distribute the plates\nto avoid losing hearts',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Gil',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ).then((value) => _pause.value = false);
  }

  Widget _pltInfo(String path, String perc, String ochki) => Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                path,
                filterQuality: FilterQuality.high,
                height: 133,
                width: 133,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextWithShadow(
                  ochki.toUpperCase(),
                  textSize: 18,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  backColor: Color.fromRGBO(186, 85, 21, 1),
                  borderColor: Color.fromRGBO(229, 107, 30, 1),
                ),
              ),
            ],
          ),
          TextWithShadow(
            perc.toUpperCase(),
            color: Color.fromRGBO(255, 255, 255, 1),
            backColor: Color.fromRGBO(0, 0, 0, 1),
            borderColor: Color.fromRGBO(0, 0, 0, 1),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgpic.png'),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _pause.value = true;
                          stgsDlg();
                        },
                        child: Image.asset(
                          'assets/pause.png',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Column(
                          children: [
                            Obx(
                              () => TextWithShadow(
                                _ct.scr.value.toString().toUpperCase(),
                                textSize: 32,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                backColor: Color.fromRGBO(186, 85, 21, 1),
                                borderColor: Color.fromRGBO(229, 107, 30, 1),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextWithShadow(
                              'SCORES'.toUpperCase(),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              backColor: Color.fromRGBO(186, 85, 21, 1),
                              borderColor: Color.fromRGBO(229, 107, 30, 1),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _pause.value = true;
                          infoDlg();
                        },
                        child: Image.asset(
                          'assets/qqqsssttt.png',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Obx(
                  () => TimeTime(
                    secs: widget.secs - _curt.value,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 375,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(220, 220, 220, 1),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        margin: EdgeInsets.only(bottom: 6),
                        child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: -60.5,
                              child: Obx(
                                () => RPltWidget(
                                  count: _ct.leftCnt.value,
                                ),
                              ),
                            ),
                            Positioned(
                              right: -60.5,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Obx(
                                  () => BPltWidget(
                                    count: _ct.rightCnt.value,
                                  ),
                                ),
                              ),
                            ),
                            Obx(
                              () => CurPlt(
                                type: _ct.curTp.value,
                                callback: (event) async {
                                  _ct.onEvent(event).then((value) {
                                    if (_ct.lfs.value < 1) {
                                      final val = Prefs.prefs!
                                              .getStringList(getPrSt()) ??
                                          [];
                                      final min = int.parse(
                                          (val.lastOrNull ?? ':0')
                                              .split(':')
                                              .last);
                                      if (val.length < 15 ||
                                          min < _ct.scr.value) {
                                        if (val.length == 15) {
                                          val.removeLast();
                                        }
                                        final date = DateFormat('dd.MM.yyyy')
                                            .format(DateTime.now())
                                            .toString();
                                        val.add('$date:${_ct.scr.value}');
                                        if (val.length > 1) {
                                          val.sort((a, b) {
                                            int av =
                                                int.parse(a.split(':').last);
                                            int bv =
                                                int.parse(b.split(':').last);
                                            return bv.compareTo(av);
                                          });
                                        }
                                        Prefs.prefs!
                                            .setStringList(getPrSt(), val);
                                      }
                                      timer!.cancel();
                                      scoreDlg();
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Obx(() {
                          if (_ct.scrLbl.isNotEmpty) {
                            Future.delayed(Duration(milliseconds: 150))
                                .then((val) {
                              _ct.scrLbl.value = '';
                            });
                          }
                          return TextWithShadow(
                            _ct.scrLbl.value.toUpperCase(),
                            textSize: 32,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(186, 85, 21, 1),
                            borderColor: Color.fromRGBO(229, 107, 30, 1),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(193, 193, 193, 0.2),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(193, 193, 193, 0.2),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(193, 193, 193, 0.2),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(193, 193, 193, 0.2),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                        Color.fromRGBO(204, 204, 204, 1),
                      ], tileMode: TileMode.mirror),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(204, 204, 204, 1),
                              Color.fromRGBO(204, 204, 204, 0.5),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            tileMode: TileMode.mirror),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(
                                () => Image.asset(
                                  _ct.lfs < 1
                                      ? 'assets/blh.png'
                                      : 'assets/rh.png',
                                  filterQuality: FilterQuality.high,
                                  width: 48,
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Obx(
                                () => Image.asset(
                                  _ct.lfs < 2
                                      ? 'assets/blh.png'
                                      : 'assets/rh.png',
                                  filterQuality: FilterQuality.high,
                                  width: 48,
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Obx(
                                () => Image.asset(
                                  _ct.lfs < 3
                                      ? 'assets/blh.png'
                                      : 'assets/rh.png',
                                  filterQuality: FilterQuality.high,
                                  width: 48,
                                ),
                              ),
                              Visibility(
                                visible: Prefs.prefs!.getBool('preB') ?? false,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Obx(
                                      () => Image.asset(
                                        _ct.lfs < 4
                                            ? 'assets/blh.png'
                                            : 'assets/rh.png',
                                        filterQuality: FilterQuality.high,
                                        width: 48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            )));
  }
}

class TimeTime extends StatelessWidget {
  final int secs;
  const TimeTime({required this.secs, super.key});

  @override
  Widget build(BuildContext context) {
    return _tab(
      Center(
        child: Column(
          children: [
            TextWithShadow(
              secs.toString().toUpperCase(),
              textSize: 52,
              color: Color.fromRGBO(255, 255, 255, 1),
              backColor: Color.fromRGBO(21, 67, 186, 1),
              borderColor: Color.fromRGBO(30, 74, 229, 1),
            ),
            TextWithShadow(
              'seconds left',
              textSize: 13,
              color: Color.fromRGBO(255, 255, 255, 1),
              backColor: Color.fromRGBO(0, 0, 0, 1),
              borderColor: Color.fromRGBO(30, 74, 229, 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tab(Widget child) {
    return Container(
      height: 95,
      width: 156,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 240, 254, 1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4), color: Color.fromRGBO(192, 202, 217, 1))
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: 3),
        decoration: BoxDecoration(
          color: Color.fromRGBO(8, 90, 249, 1),
          borderRadius: BorderRadius.circular(9),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CustomPaint(
            foregroundPainter: OneTreshina(true),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(49, 106, 254, 1),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class OneTreshina extends CustomPainter {
  final bool isLeft;

  OneTreshina(this.isLeft);
  @override
  void paint(Canvas canvas, Size size) {
    if (isLeft) {
      final path = Path();
      path.moveTo(8.5, size.height);
      path.lineTo(16.5, size.height - 3.5);
      path.lineTo(22, size.height - 8);
      path.lineTo(17.5, size.height - 2.5);
      path.lineTo(10.5, size.height);
      path.close();
      final path2 = Path();
      path2.moveTo(8.5, size.height);
      path2.lineTo(16.5, size.height - 3.5);
      path2.lineTo(22, size.height - 8);
      path2.lineTo(18.5, size.height - 2.5);
      path2.lineTo(11.5, size.height);
      path2.close();
      canvas.drawPath(
          path2,
          Paint()
            ..style = PaintingStyle.fill
            ..color = Colors.white);
      canvas.drawPath(
          path,
          Paint()
            ..style = PaintingStyle.fill
            ..color = Color.fromRGBO(9, 91, 251, 1));
    } else {
      final path = Path();
      path.moveTo(size.width - 8.5, size.height);
      path.lineTo(size.width - 16.5, size.height - 3.5);
      path.lineTo(size.width - 22, size.height - 8);
      path.lineTo(size.width - 17.5, size.height - 2.5);
      path.lineTo(size.width - 10.5, size.height);
      path.close();
      final path2 = Path();
      path2.moveTo(size.width - 8.5, size.height);
      path2.lineTo(size.width - 16.5, size.height - 3.5);
      path2.lineTo(size.width - 22, size.height - 8);
      path2.lineTo(size.width - 18.5, size.height - 2.5);
      path2.lineTo(size.width - 11.5, size.height);
      path2.close();
      canvas.drawPath(
          path2,
          Paint()
            ..style = PaintingStyle.fill
            ..color = Colors.white);
      canvas.drawPath(
          path,
          Paint()
            ..style = PaintingStyle.fill
            ..color = Color.fromRGBO(9, 91, 251, 1));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
