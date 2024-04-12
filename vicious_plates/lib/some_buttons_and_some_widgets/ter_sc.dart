import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/some_buttons_and_some_widgets/text_with_shadow.dart';
import 'package:vicious_plates/some_classes/sup_cla.dart';
import 'package:vicious_plates/some_classes/te_cla.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TerSc extends StatefulWidget {
  const TerSc({
    Key? key,
  }) : super(key: key);

  @override
  State<TerSc> createState() => _TerScState();
}

class _TerScState extends State<TerSc> {
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
      ..loadRequest(Uri.parse(TeCla.totoU));
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
                TerScHeader(),
                const SizedBox(
                  height: 16,
                ),
                TerScWV(),
              ],
            ),
          ),
        )));
  }
}

class TerScWV extends StatefulWidget {
  const TerScWV({super.key});

  @override
  State<TerScWV> createState() => _TerScWVState();
}

class _TerScWVState extends State<TerScWV> {
  late WebViewController chtoto;
  @override
  void initState() {
    chtoto = WebViewController()
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
      ..loadRequest(Uri.parse(TeCla.totoU));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: WebViewWidget(
          controller: chtoto,
        ),
      ),
    );
  }
}

class TerScHeader extends StatelessWidget {
  const TerScHeader({super.key});

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
                'Terms of Use'.toUpperCase(),
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
