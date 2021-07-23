import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(Size(800, 900));
  }

  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      title: 'Keval Gadhiya',
      theme: ThemeData(
        primaryColor: Color(0xff71A882),
        scaffoldBackgroundColor: Color(0xffECEEE8),
        buttonColor: Color(0xff71A882),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
