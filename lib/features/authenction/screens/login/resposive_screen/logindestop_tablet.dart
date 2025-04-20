import 'package:adminpannel/common/widgets/layouts/templates/login_templetes.dart';
import 'package:adminpannel/features/authenction/screens/login/widget/loginformwidget.dart';
import 'package:adminpannel/features/authenction/screens/login/widget/loginheaderwidget.dart';
import 'package:flutter/material.dart';

class LoginDestopTablet extends StatelessWidget {
  const LoginDestopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return TLoginTempletes(
      child: Column(
        children: [
          /// header
          LoginHeaderWidget(),

          /// Form
          LoginFormWidget(),
        ],
      ),
    );
  }
}
