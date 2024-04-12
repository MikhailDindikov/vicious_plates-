import 'package:apphud/apphud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vicious_plates/apiapi.dart';
import 'package:vicious_plates/glavni_screen.dart';
import 'package:vicious_plates/prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.aaaaaaa();
  await Apphud.start(apiKey: ApiApi.keySuperPuperSecret);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'ABR',
      ),
      title: 'Vicious Plates',
      home: GlavniScreen(
        onMsc: Prefs.prefs!.getBool('msc') ?? true,
      ),
    );
  }
}
