import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/features/Feature3_desktop.dart';


class Feature3 extends StatelessWidget {
  const Feature3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Feature3Desktop(),
      tablet: Feature3Desktop(),
      desktop: Feature3Desktop(),
    );
  }
}



