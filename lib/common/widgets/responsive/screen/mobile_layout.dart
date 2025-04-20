import 'package:adminpannel/common/widgets/layouts/header/headers.dart';
import 'package:adminpannel/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  final Widget? body;
  MobileLayout({super.key, this.body});

  final GlobalKey<ScaffoldState>? scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: THeader(
          scaffoldKey: scaffoldKey,
        ),
        drawer: TSiderBar(),
        body: body ?? SizedBox());
  }
}
