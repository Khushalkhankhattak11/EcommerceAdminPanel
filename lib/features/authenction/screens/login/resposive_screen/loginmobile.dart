import 'package:adminpannel/features/authenction/screens/login/widget/loginformwidget.dart';
import 'package:adminpannel/features/authenction/screens/login/widget/loginheaderwidget.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Loginmobile extends StatelessWidget {
  const Loginmobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            children: [
              /// header
              LoginHeaderWidget(),

              /// Form
              LoginFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
