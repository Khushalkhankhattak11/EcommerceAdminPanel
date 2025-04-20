// ignore_for_file: deprecated_member_use

import 'package:adminpannel/common/widgets/layouts/header/headers.dart';
import 'package:adminpannel/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  final Widget? body;
  TabletLayout({super.key, this.body});

  final GlobalKey<ScaffoldState>? scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: THeader(
        scaffoldKey: scaffoldKey,
      ),
      drawer: TSiderBar(),
      body: body ?? SizedBox(),
    );
  }
}
