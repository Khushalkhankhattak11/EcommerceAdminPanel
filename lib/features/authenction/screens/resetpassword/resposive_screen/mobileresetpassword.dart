import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/layouts/templates/login_templetes.dart';
import '../widget/resetheadandformwidget.dart';

class MobileResetPassord extends StatelessWidget {
  const MobileResetPassord({super.key});

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ??'';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),child:  ResetHeaderAndForm(),),
      ),
    );
  }
}