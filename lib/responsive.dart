import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const Responsive({
    @required this.mobile,
    @required this.web,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 440;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 441 &&
  //     MediaQuery.of(context).size.width < 800;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 440) {
          return web;
        } else {
          return mobile;
        }
      },
    );
  }
}
