
import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:adminpannel/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordHeadAndFormWidget extends StatelessWidget {
  const ForgetPasswordHeadAndFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        ///
        IconButton(onPressed: ()=> Get.back(), icon: Icon(Iconsax.arrow_left,),),
        SizedBox(height: TSizes.spaceBtwItems),
        Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: TSizes.spaceBtwItems),
        Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium),
        SizedBox(height: TSizes.spaceBtwItems *2),

        /// Form
        Form(child: TextFormField(
          decoration: InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),),
        SizedBox(height: TSizes.spaceBtwSections),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () =>Get.toNamed(TRoutes.resetPassword,parameters:{'email': 'khan@gmail.com'}), child: Text(TTexts.submit),),
        ),
        SizedBox(height: TSizes.spaceBtwItems *2),
      ],

    );
  }
}
