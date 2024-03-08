import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/features/Feature2_desktop.dart';


class Feature2 extends StatelessWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: Feature2Desktop(),
      tablet: Feature2Desktop(),
      desktop: Feature2Desktop(),
    );
  }
}



