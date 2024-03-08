import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/features/Feature1_desktop.dart';


class Feature1 extends StatelessWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Feature1Desktop(),
      tablet: Feature1Desktop(),
      desktop: Feature1Desktop(),
    );
  }
}



