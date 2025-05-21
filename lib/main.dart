import 'package:flutter/material.dart';
import 'package:sopitify_clone/pages/settings.dart';
import 'package:sopitify_clone/settings_page/about.dart';
import 'package:sopitify_clone/settings_page/account.dart';
import 'package:sopitify_clone/settings_page/audio_settings.dart';
import 'package:sopitify_clone/settings_page/download.dart';
import 'package:sopitify_clone/settings_page/explicit.dart';
import 'package:sopitify_clone/settings_page/mobile_data.dart';
import 'package:sopitify_clone/settings_page/privacy.dart';
import 'package:sopitify_clone/settings_page/storage.dart';
import 'package:sopitify_clone/some_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soptify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Home(),
      routes: {
        '/Settings': (context) => Settings(),
        '/Mobiledata': (context) => MobileData(),
        '/Storage': (context) => Storage(),
        '/Audio': (context) => AudioSettings(),
        '/Download': (context) => Download(),
        '/Privacy': (context) => Privacy(),
        '/Explicit': (context) => Explicit(),
        '/Account': (context) => Account(),
        '/About': (context) => About(),
      },
    );
  }
}
