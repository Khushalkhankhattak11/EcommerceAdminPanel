import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../widget/forgetpasswordandheadandformwidget.dart';

class ForgetMobilePassword extends StatelessWidget {
  const ForgetMobilePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ForgetPasswordHeadAndFormWidget(),
        ),
      ),
    );
  }
}
