import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/features/Feature4_desktop.dart';


class Feature4 extends StatelessWidget {
  const Feature4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Feature4Desktop(),
      tablet: Feature4Desktop(),
      desktop: Feature4Desktop(),
    );
  }
}



