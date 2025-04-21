import 'package:adminpannel/common/widgets/layouts/templates/site_templetes.dart';
import 'package:adminpannel/features/authenction/screens/resetpassword/resposive_screen/destoptabletresetpassword.dart';
import 'package:adminpannel/features/authenction/screens/resetpassword/resposive_screen/mobileresetpassword.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  TSiteTempletes(
      useLayout: false,
      destop: DestopTabletResetPassword(),
      mobile: MobileResetPassord(),
    );
  }
}
