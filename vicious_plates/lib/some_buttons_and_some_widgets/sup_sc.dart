import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/text_with_shadow.dart';
import 'package:vicious_plates/some_classes/sup_cla.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SupSc extends StatefulWidget {
  const SupSc({
    Key? key,
  }) : super(key: key);

  @override
  State<SupSc> createState() => _SupScState();
}

class _SupScState extends State<SupSc> {
  @override
  Widget build(BuildContext context) {
    return _gdsaksdfokjdsijosdjoisdfjio;
  }

  Widget get _gdsaksdfokjdsijosdjoisdfjio => Container(
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
                ),
                SupScZagol(),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                          child:
                              Center(child: Container(child: ViewWebSupSc())))),
                ),
              ],
            ),
          ),
        )));
}

class ViewWebSupSc extends StatefulWidget {
  const ViewWebSupSc({super.key});

  @override
  State<ViewWebSupSc> createState() => _ViewWebSupScState();
}

class _ViewWebSupScState extends State<ViewWebSupSc> {
  late WebViewController controller;
  static int dsvdfkvdfvdmdsvlsdfpdsofpopfsdopfopspofpoopsopopdsodsopopdsposdposdop() {
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
    int aasfsdfsdfegrter = 10;
    while (aasfsdfsdfegrter > 0) {
      aasfsdfsdfegrter--;
    }
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(SupCla.susoU));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: controller,
    );
  }
}

class SupScZagol extends StatelessWidget {
  const SupScZagol({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
                'Support'.toUpperCase(),
                color: Color.fromRGBO(255, 255, 255, 1),
                backColor: Color.fromRGBO(21, 67, 186, 1),
                borderColor: Color.fromRGBO(30, 74, 229, 1),
              ),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
