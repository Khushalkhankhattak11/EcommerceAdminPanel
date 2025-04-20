import 'package:adminpannel/common/widgets/responsive/responsive_desgin.dart';
import 'package:adminpannel/common/widgets/responsive/screen/destop_layout.dart';
import 'package:adminpannel/common/widgets/responsive/screen/mobile_layout.dart';
import 'package:adminpannel/common/widgets/responsive/screen/tablet_layout.dart';
import 'package:flutter/material.dart';

class TSiteTempletes extends StatelessWidget {
  final Widget? destop;
  final Widget? mobile;
  final Widget? tablet;
  final bool useLayout;

  const TSiteTempletes({
    super.key,
    this.destop,
    this.mobile,
    this.tablet,
    this.useLayout = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TResponsiveDesgin(
        destop: useLayout ? DestopLayout(body: destop) : destop ?? Container(),
        mobile: useLayout
            ? MobileLayout(body: mobile ?? destop)
            : mobile ?? destop ?? Container(),
        tablet: useLayout
            ? TabletLayout(body: tablet ?? destop)
            : tablet ?? destop ?? Container(),
      ),
    );
  }
}
