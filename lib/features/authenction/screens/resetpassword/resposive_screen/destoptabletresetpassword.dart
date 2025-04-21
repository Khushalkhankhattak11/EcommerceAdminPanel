import 'package:adminpannel/common/widgets/layouts/templates/login_templetes.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/utils/constants/image_strings.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:adminpannel/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/resetheadandformwidget.dart';

class DestopTabletResetPassword extends StatelessWidget {
  const DestopTabletResetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return TLoginTempletes(
      child: ResetHeaderAndForm(),
    );
  }
}
