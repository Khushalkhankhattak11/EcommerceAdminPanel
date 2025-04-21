import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/utils/constants/image_strings.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:adminpannel/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetHeaderAndForm extends StatelessWidget {
  const ResetHeaderAndForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return Column(
      children: [
        /// Header

        Row(
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: Icon(CupertinoIcons.clear),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Images
        Image.asset(
          TImages.deliveredEmailIllustration,
          width: 300,
          height: 300,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Title and subtitle
        Text(
          TTexts.changeYourPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text(
          email,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text(
          TTexts.changeYourPasswordSubTitle,
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.offAllNamed(TRoutes.login),
              child: Text(TTexts.done)),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.back(), child: Text(TTexts.resendEmail)),
        )
      ],
    );
  }
}
