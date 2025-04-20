import 'package:adminpannel/common/widgets/layouts/templates/site_templetes.dart';
import 'package:adminpannel/features/authenction/screens/login/resposive_screen/logindestop_tablet.dart';
import 'package:adminpannel/features/authenction/screens/login/resposive_screen/loginmobile.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TSiteTempletes(
      useLayout: false,
      destop: LoginDestopTablet(),
      mobile: Loginmobile(),
    );
  }
}
