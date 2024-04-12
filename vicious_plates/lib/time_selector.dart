import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/gm_scr.dart';
import 'package:vicious_plates/some_button_on_some_screen.dart';

import 'some_buttons_and_some_widgets/text_with_shadow.dart';

class TimeSelector extends StatelessWidget {
  const TimeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgpic.png'),
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
                  child: SizedBox(
                    child: SizedBox(
                      child: SizedBox(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: Get.back,
                          child: Image.asset(
                            'assets/bcbc.png',
                            filterQuality: FilterQuality.high,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: TextWithShadow(
                            'Select a\ntime mode:'.toUpperCase(),
                            color: Color.fromRGBO(255, 255, 255, 1),
                            backColor: Color.fromRGBO(21, 67, 186, 1),
                            borderColor: Color.fromRGBO(30, 74, 229, 1),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: SizedBox(
                            child: SizedBox(
                              child: Container(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => GmScr(
                                  key: UniqueKey(),
                                  secs: 15,
                                ));
                          },
                          child: Sec15Bt(),
                        ),
                        SizedBox(
                          height: 16,
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: SizedBox(
                              child: SizedBox(),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.to(() => GmScr(
                                    key: UniqueKey(),
                                    secs: 30,
                                  ));
                            },
                            child: Sec30Bt()),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.to(() => GmScr(
                                    key: UniqueKey(),
                                    secs: 60,
                                  ));
                            },
                            child: Sec60Bt()),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        )));
  }
}

int ghndgfshjkfcdshkjsdgfjhokgfjhgerwhiuegriouerw87y478438734cyuu38723782378232378f() {
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

class Sec60Bt extends StatelessWidget {
  const Sec60Bt({super.key});

  @override
  Widget build(BuildContext context) {
    return SomeButtomOnSomeScreen(
      color: Color.fromRGBO(49, 106, 254, 1),
      shadowColor: Color.fromRGBO(8, 90, 249, 1),
      child: TextWithShadow(
        '60 sec'.toUpperCase(),
        color: Color.fromRGBO(255, 255, 255, 1),
        backColor: Color.fromRGBO(21, 67, 186, 1),
        borderColor: Color.fromRGBO(30, 74, 229, 1),
      ),
    );
  }
}

class Sec30Bt extends StatelessWidget {
  const Sec30Bt({super.key});

  @override
  Widget build(BuildContext context) {
    return SomeButtomOnSomeScreen(
      color: Color.fromRGBO(49, 106, 254, 1),
      shadowColor: Color.fromRGBO(8, 90, 249, 1),
      child: TextWithShadow(
        '30 sec'.toUpperCase(),
        color: Color.fromRGBO(255, 255, 255, 1),
        backColor: Color.fromRGBO(21, 67, 186, 1),
        borderColor: Color.fromRGBO(30, 74, 229, 1),
      ),
    );
  }
}

class Sec15Bt extends StatelessWidget {
  const Sec15Bt({super.key});

  @override
  Widget build(BuildContext context) {
    return SomeButtomOnSomeScreen(
      color: Color.fromRGBO(49, 106, 254, 1),
      shadowColor: Color.fromRGBO(8, 90, 249, 1),
      child: TextWithShadow(
        '15 sec'.toUpperCase(),
        color: Color.fromRGBO(255, 255, 255, 1),
        backColor: Color.fromRGBO(21, 67, 186, 1),
        borderColor: Color.fromRGBO(30, 74, 229, 1),
      ),
    );
  }
}
