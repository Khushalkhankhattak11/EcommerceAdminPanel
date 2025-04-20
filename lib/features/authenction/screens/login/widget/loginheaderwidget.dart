import 'package:adminpannel/utils/constants/image_strings.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:adminpannel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            TImages.darkAppLogo,
            width: 100,
            height: 100,
          ),
          SizedBox(height: TSizes.spaceBtwSections),
          Text(
            TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: TSizes.sm),
          Text(
            TTexts.signupTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
