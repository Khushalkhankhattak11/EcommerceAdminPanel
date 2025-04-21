import 'package:adminpannel/features/authenction/screens/forgetpassword/resposive_screen/forgetdestoptabletpassword.dart';
import 'package:adminpannel/features/authenction/screens/forgetpassword/resposive_screen/forgetmobilepassword.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/layouts/templates/site_templetes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTempletes(
      useLayout: false,
      destop: ForgetDestopTabletPassword(),
      mobile: ForgetMobilePassword(),
    );
  }
}
