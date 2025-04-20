import 'package:adminpannel/common/styles/spacing_styles.dart';
import 'package:adminpannel/utils/constants/colors.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TLoginTempletes extends StatelessWidget {
  final Widget child;
  const TLoginTempletes({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
              color: TColors.white,
              borderRadius: BorderRadius.circular(
                TSizes.cardRadiusLg,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
