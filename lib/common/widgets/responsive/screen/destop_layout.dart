// ignore_for_file: deprecated_member_use
import 'package:adminpannel/common/widgets/layouts/header/headers.dart';
import 'package:adminpannel/common/widgets/layouts/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class DestopLayout extends StatelessWidget {
  final Widget? body;
  const DestopLayout({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: TSiderBar(),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// header
                  THeader(),
                  SizedBox(height: 10),

                  /// body
                  body ?? SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
