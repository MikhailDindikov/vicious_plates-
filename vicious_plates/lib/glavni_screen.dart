import 'dart:math';
import 'dart:ui';

import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:vicious_plates/audio.dart';
import 'package:vicious_plates/ho_co.dart';
import 'package:vicious_plates/prefs.dart';
import 'package:vicious_plates/some_but_without_treshina.dart';
import 'package:vicious_plates/some_button_on_some_screen.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/ter_sc.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/text_with_shadow.dart';
import 'package:vicious_plates/some_classes/sup_cla.dart';
import 'package:vicious_plates/time_selector.dart';

import 'some_buttons_and_some_widgets/poli_sc.dart';
import 'some_buttons_and_some_widgets/sup_sc.dart';

class GlavniScreen extends StatefulWidget {
  final bool onMsc;
  const GlavniScreen({required this.onMsc, super.key});

  @override
  State<GlavniScreen> createState() => _GlavniScreenState();
}

class _GlavniScreenState extends State<GlavniScreen> {
  late RxBool liMu;
  final RxBool preLo = false.obs;
  final c = Get.put(HoCo());

  int sdflksdfjksdksdkfkmldfgasfgkgjmdgmksdmkdfkjjkfgkjldjkldfgkjldfgkj() {
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
    return foofdoffdodfp;
  }

  @override
  void initState() {
    liMu = widget.onMsc.obs;
    super.initState();
    if (liMu.value) {
      Audio.playBgm('mus.mp3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HoCo>(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ttlbg.png'),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
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
                          GestureDetector(
                            onTap: infoDlg,
                            child: Image.asset(
                              'assets/qqqsssttt.png',
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => TimeSelector());
                    },
                    child: SomeButtomOnSomeScreen(
                      color: Color.fromRGBO(254, 181, 49, 1),
                      shadowColor: Color.fromRGBO(249, 92, 8, 1),
                      child: TextWithShadow(
                        'PLAY',
                        color: Color.fromRGBO(255, 255, 255, 1),
                        backColor: Color.fromRGBO(186, 85, 21, 1),
                        borderColor: Color.fromRGBO(229, 107, 30, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: mdlPre,
                    child: SomeButtomOnSomeScreen(
                      color: Color.fromRGBO(49, 106, 254, 1),
                      shadowColor: Color.fromRGBO(8, 90, 249, 1),
                      child: TextWithShadow(
                        'Premium'.toUpperCase(),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        backColor: Color.fromRGBO(21, 67, 186, 1),
                        borderColor: Color.fromRGBO(30, 74, 229, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        recDlg(
                            Prefs.prefs!.getStringList('15sec') ?? [],
                            Prefs.prefs!.getStringList('30sec') ?? [],
                            Prefs.prefs!.getStringList('60sec') ?? [],
                            Prefs.prefs!.getStringList('120sec') ?? []);
                      },
                      child: SomeButtomOnSomeScreen(
                        color: Color.fromRGBO(49, 106, 254, 1),
                        shadowColor: Color.fromRGBO(8, 90, 249, 1),
                        child: TextWithShadow(
                          'Record Table'.toUpperCase(),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          backColor: Color.fromRGBO(21, 67, 186, 1),
                          borderColor: Color.fromRGBO(30, 74, 229, 1),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: abtUsDlg,
                    child: SomeButtomOnSomeScreen(
                      color: Color.fromRGBO(49, 106, 254, 1),
                      shadowColor: Color.fromRGBO(8, 90, 249, 1),
                      child: TextWithShadow(
                        'About Us'.toUpperCase(),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        backColor: Color.fromRGBO(21, 67, 186, 1),
                        borderColor: Color.fromRGBO(30, 74, 229, 1),
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
      );
    });
  }

  void prADlg() {
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
                        SizedBox(
                          height: 32,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: TextWithShadow(
                                  'Premium account activated'.toUpperCase(),
                                  textSize: 24,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  backColor: Color.fromRGBO(0, 0, 0, 1),
                                  borderColor: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: Get.back,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SomeButtomOnSomeScreen(
                              color: Color.fromRGBO(49, 106, 254, 1),
                              shadowColor: Color.fromRGBO(8, 90, 249, 1),
                              child: TextWithShadow(
                                'ok'.toUpperCase(),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                backColor: Color.fromRGBO(21, 67, 186, 1),
                                borderColor: Color.fromRGBO(30, 74, 229, 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
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

  void reSuDlg() {
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
                        SizedBox(
                          height: 32,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: TextWithShadow(
                                  'Your purchase has been restored!'
                                      .toUpperCase(),
                                  textSize: 24,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  backColor: Color.fromRGBO(0, 0, 0, 1),
                                  borderColor: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: Get.back,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SomeButtomOnSomeScreen(
                              color: Color.fromRGBO(49, 106, 254, 1),
                              shadowColor: Color.fromRGBO(8, 90, 249, 1),
                              child: TextWithShadow(
                                'ok'.toUpperCase(),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                backColor: Color.fromRGBO(21, 67, 186, 1),
                                borderColor: Color.fromRGBO(30, 74, 229, 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
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

  void reErDlg() {
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
                        SizedBox(
                          height: 32,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: TextWithShadow(
                                  'Your purchase is not found. Write to support: ${SupCla.susoU}'
                                      .toUpperCase(),
                                  textSize: 24,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  backColor: Color.fromRGBO(0, 0, 0, 1),
                                  borderColor: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: Get.back,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SomeButtomOnSomeScreen(
                              color: Color.fromRGBO(49, 106, 254, 1),
                              shadowColor: Color.fromRGBO(8, 90, 249, 1),
                              child: TextWithShadow(
                                'ok'.toUpperCase(),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                backColor: Color.fromRGBO(21, 67, 186, 1),
                                borderColor: Color.fromRGBO(30, 74, 229, 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
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

  void mdlPre() {
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
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  padding: EdgeInsets.all(8).copyWith(bottom: 20),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          TextWithShadow(
                            'Premium'.toUpperCase(),
                            color: Colors.white,
                            backColor: Color.fromRGBO(0, 0, 0, 1),
                            borderColor: Color.fromRGBO(0, 0, 0, 1),
                          ),
                          GestureDetector(
                            onTap: Get.back,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Image.asset(
                                'assets/crclcls.png',
                                filterQuality: FilterQuality.high,
                                width: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/stststs.png',
                        filterQuality: FilterQuality.high,
                        height: 96,
                        width: 96,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      SomeButWithoutTreshina(
                          child: TextWithShadow(
                            'No ADs'.toUpperCase(),
                            textSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(21, 67, 186, 1),
                            borderColor: Color.fromRGBO(30, 74, 229, 1),
                          ),
                          color: Color.fromRGBO(234, 240, 254, 1),
                          shadowColor: Color.fromRGBO(192, 202, 217, 1)),
                      SizedBox(
                        height: 16,
                      ),
                      SomeButWithoutTreshina(
                          child: TextWithShadow(
                            'ONE EXTRA LIFE'.toUpperCase(),
                            textSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(21, 67, 186, 1),
                            borderColor: Color.fromRGBO(30, 74, 229, 1),
                          ),
                          color: Color.fromRGBO(234, 240, 254, 1),
                          shadowColor: Color.fromRGBO(192, 202, 217, 1)),
                      SizedBox(
                        height: 16,
                      ),
                      SomeButWithoutTreshina(
                          child: TextWithShadow(
                            '120 sec mode'.toUpperCase(),
                            textSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(21, 67, 186, 1),
                            borderColor: Color.fromRGBO(30, 74, 229, 1),
                          ),
                          color: Color.fromRGBO(234, 240, 254, 1),
                          shadowColor: Color.fromRGBO(192, 202, 217, 1)),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final hgpre = Prefs.prefs!.getBool('preB') ?? false;
                          if (hgpre) {
                            Get.back();
                            prADlg();
                          } else {
                            if (!preLo.value) {
                              preLo.value = true;
                              bool bd = false;

                              final apw = await Apphud.paywalls();
                              print(apw?.paywalls.first.products?.first);

                              await Apphud.purchase(
                                product: apw?.paywalls.first.products?.first,
                              ).whenComplete(
                                () async {
                                  if (await Apphud.hasPremiumAccess() ||
                                      await Apphud.hasActiveSubscription()) {
                                    await Prefs.prefs!.setBool('preB', true);
                                    bd = true;
                                  }
                                },
                              );

                              preLo.value = false;

                              if (bd) {
                                Get.back();
                                prADlg();
                              }
                            }
                          }
                        },
                        child: SomeButtomOnSomeScreen(
                          color: Color.fromRGBO(254, 181, 49, 1),
                          shadowColor: Color.fromRGBO(249, 92, 8, 1),
                          child: Obx(
                            () => preLo.value
                                ? const CupertinoActivityIndicator(
                                    color: Colors.white,
                                  )
                                : TextWithShadow(
                                    'Buy Premium for 0.99\$'.toUpperCase(),
                                    textSize: 16,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(186, 85, 21, 1),
                                    borderColor:
                                        Color.fromRGBO(229, 107, 30, 1),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () async {
                          bool hPr = Prefs.prefs!.getBool("preB") ?? false;
                          if (hPr) {
                            Get.back();
                            prADlg();
                          } else {
                            final prea = await Apphud.hasPremiumAccess();
                            final sup = await Apphud.hasActiveSubscription();
                            if (prea || sup) {
                              await Prefs.prefs!.setBool('preB', true);
                              Get.back();
                              reSuDlg();
                            } else {
                              Get.back();
                              reErDlg();
                            }
                          }
                        },
                        child: SomeButtomOnSomeScreen(
                          color: Color.fromRGBO(49, 106, 254, 1),
                          shadowColor: Color.fromRGBO(8, 90, 249, 1),
                          child: TextWithShadow(
                            'Restore Purchase'.toUpperCase(),
                            textSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(21, 67, 186, 1),
                            borderColor: Color.fromRGBO(30, 74, 229, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void abtUsDlg() {
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
                            SizedBox(
                              width: 50,
                            ),
                            TextWithShadow(
                              'ABOUT US'.toUpperCase(),
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
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                  Get.to(() => PoliSc());
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'Privacy Policy'.toUpperCase(),
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
                                  Get.back();
                                  Get.to(() => TerSc());
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'Terms of Use'.toUpperCase(),
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
                                  Get.back();
                                  Get.to(() => SupSc());
                                },
                                child: SomeButtomOnSomeScreen(
                                  color: Color.fromRGBO(49, 106, 254, 1),
                                  shadowColor: Color.fromRGBO(8, 90, 249, 1),
                                  child: TextWithShadow(
                                    'Support'.toUpperCase(),
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    backColor: Color.fromRGBO(21, 67, 186, 1),
                                    borderColor: Color.fromRGBO(30, 74, 229, 1),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16,
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
    );
  }

  void recDlg(List<String> sec15, List<String> sec30, List<String> sec60,
      List<String> sec120) {
    RxInt selected = 0.obs;
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 237, 231, 1),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      color: Color.fromRGBO(217, 202, 192, 1),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(32, 76, 190, 1),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1, color: Color.fromRGBO(0, 0, 0, 1)),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                color: Color.fromRGBO(65, 65, 65, 0.2),
                              ),
                            ],
                          ),
                          child: IntrinsicHeight(
                            child: ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.circular(12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      selected.value = 0;
                                    },
                                    child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.only(
                                            bottom: 13, top: 76),
                                        alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                            color: selected.value == 0
                                                ? Color.fromRGBO(0, 0, 0, 0.33)
                                                : null),
                                        child: TextWithShadow(
                                          '15\nsec'.toUpperCase(),
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          backColor:
                                              Color.fromRGBO(21, 67, 186, 1),
                                          borderColor:
                                              Color.fromRGBO(30, 74, 229, 1),
                                        ),
                                      ),
                                    ),
                                  )),
                                  Container(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      selected.value = 1;
                                    },
                                    child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.only(
                                            bottom: 13, top: 76),
                                        alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                            color: selected.value == 1
                                                ? Color.fromRGBO(0, 0, 0, 0.33)
                                                : null),
                                        child: TextWithShadow(
                                          '30\nsec'.toUpperCase(),
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          backColor:
                                              Color.fromRGBO(21, 67, 186, 1),
                                          borderColor:
                                              Color.fromRGBO(30, 74, 229, 1),
                                        ),
                                      ),
                                    ),
                                  )),
                                  Container(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      selected.value = 2;
                                    },
                                    child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.only(
                                            bottom: 13, top: 76),
                                        alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                            color: selected.value == 2
                                                ? Color.fromRGBO(0, 0, 0, 0.33)
                                                : null),
                                        child: TextWithShadow(
                                          '60\nsec'.toUpperCase(),
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          backColor:
                                              Color.fromRGBO(21, 67, 186, 1),
                                          borderColor:
                                              Color.fromRGBO(30, 74, 229, 1),
                                        ),
                                      ),
                                    ),
                                  )),
                                  Container(
                                    width: 1,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () {
                                      if (Prefs.prefs!.getBool('preB') ??
                                          false) {
                                        selected.value = 3;
                                      }
                                    },
                                    child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.only(
                                            bottom: 13, top: 76),
                                        alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                            color: !(Prefs.prefs!
                                                            .getBool('preB') ??
                                                        false)
                                                    .obs
                                                    .value
                                                ? Color.fromRGBO(
                                                    134, 134, 134, 1)
                                                : selected.value == 3
                                                    ? Color.fromRGBO(
                                                        0, 0, 0, 0.33)
                                                    : null),
                                        child: TextWithShadow(
                                          '120\nsec'.toUpperCase(),
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          backColor: !(Prefs.prefs!
                                                          .getBool('preB') ??
                                                      false)
                                                  .obs
                                                  .value
                                              ? Color.fromRGBO(93, 93, 93, 1)
                                              : Color.fromRGBO(21, 67, 186, 1),
                                          borderColor: !(Prefs.prefs!
                                                          .getBool('preB') ??
                                                      false)
                                                  .obs
                                                  .value
                                              ? Color.fromRGBO(101, 101, 101, 1)
                                              : Color.fromRGBO(30, 74, 229, 1),
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(49, 106, 254, 1),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 1, color: Color.fromRGBO(0, 0, 0, 1)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  color: Color.fromRGBO(65, 65, 65, 0.2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                TextWithShadow(
                                  'RECORD TABLE'.toUpperCase(),
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
                                      height: 50,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) => Container(
                                height: 48,
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 14, bottom: 8),
                                color: index.isOdd
                                    ? Color.fromRGBO(217, 217, 217, 1)
                                    : null,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        TextWithShadow((index + 1).toString(),
                                            color: index == 0
                                                ? Color.fromRGBO(
                                                    251, 223, 125, 1)
                                                : index == 1
                                                    ? Color.fromRGBO(
                                                        199, 212, 238, 1)
                                                    : index == 2
                                                        ? Color.fromRGBO(
                                                            176, 131, 62, 1)
                                                        : Colors.white,
                                            backColor:
                                                Color.fromRGBO(0, 0, 0, 1),
                                            borderColor:
                                                Color.fromRGBO(0, 0, 0, 1)),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Obx(
                                          () => Visibility(
                                            visible: (selected.value == 0 &&
                                                    sec15.isNotEmpty.obs
                                                        .value) ||
                                                (selected.value == 1 &&
                                                    sec30.isNotEmpty.obs
                                                        .value) ||
                                                (selected.value == 2 &&
                                                    sec60.isNotEmpty.obs
                                                        .value) ||
                                                (selected.value == 3 &&
                                                    sec120
                                                        .isNotEmpty.obs.value),
                                            child: TextWithShadow(
                                              selected.value == 0 &&
                                                      sec15.length > index
                                                  ? sec15[index].split(':')[0]
                                                  : selected.value == 1 &&
                                                          sec30.length > index
                                                      ? sec30[index]
                                                          .split(':')[0]
                                                      : selected.value == 2 &&
                                                              sec60.length >
                                                                  index
                                                          ? sec60[index]
                                                              .split(':')[0]
                                                          : selected.value ==
                                                                      3 &&
                                                                  sec120.length >
                                                                      index
                                                              ? sec120[index]
                                                                  .split(':')[0]
                                                              : ''.toString(),
                                              color: Colors.white,
                                              backColor:
                                                  Color.fromRGBO(0, 0, 0, 1),
                                              borderColor:
                                                  Color.fromRGBO(0, 0, 0, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Obx(
                                      () => TextWithShadow(
                                        selected.value == 0 &&
                                                sec15.length > index
                                            ? sec15[index].split(':')[1]
                                            : selected.value == 1 &&
                                                    sec30.length > index
                                                ? sec30[index].split(':')[1]
                                                : selected.value == 2 &&
                                                        sec60.length > index
                                                    ? sec60[index].split(':')[1]
                                                    : selected.value == 3 &&
                                                            sec120.length >
                                                                index
                                                        ? sec120[index]
                                                            .split(':')[1]
                                                        : ''.toString(),
                                        color: Colors.white,
                                        backColor: Color.fromRGBO(0, 0, 0, 1),
                                        borderColor: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
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
}
