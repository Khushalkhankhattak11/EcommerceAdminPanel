import 'package:adminpannel/common/widgets/layouts/templates/login_templetes.dart';
import 'package:flutter/material.dart';

import '../widget/forgetpasswordandheadandformwidget.dart';


class ForgetDestopTabletPassword extends StatelessWidget {
  const ForgetDestopTabletPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TLoginTempletes(child: ForgetPasswordHeadAndFormWidget());
  }
}
