import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kevalgadhiya/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(800, 900));
  }

  runApp(
    MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      title: 'Keval Gadhiya',
      theme: ThemeData(
        primaryColor: const Color(0xff71A882),
        scaffoldBackgroundColor: const Color(0xffECEEE8),
        buttonColor: const Color(0xff71A882),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
