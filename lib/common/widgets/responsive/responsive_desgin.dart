import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TResponsiveDesgin extends StatelessWidget {
  final Widget destop;
  final Widget mobile;
  final Widget tablet;
  const TResponsiveDesgin(
      {super.key,
      required this.destop,
      required this.mobile,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= TSizes.desktopScreenSize) {
        return destop;
      } else if (constraints.maxWidth < TSizes.desktopScreenSize &&
          constraints.maxWidth >= TSizes.tabletScreenSize) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
