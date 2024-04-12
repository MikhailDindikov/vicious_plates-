import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/text_with_shadow.dart';
import 'package:vicious_plates/some_classes/pri_cla.dart';
import 'package:vicious_plates/some_classes/sup_cla.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PoliSc extends StatefulWidget {
  const PoliSc({
    Key? key,
  }) : super(key: key);

  @override
  State<PoliSc> createState() => _PoliScState();
}

class _PoliScState extends State<PoliSc> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
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
      ..loadRequest(Uri.parse(PriCla.pritoU));
    super.initState();
  }

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
                            'Privacy Policy'.toUpperCase(),
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
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: WebViewWidget(
                      controller: controller,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
