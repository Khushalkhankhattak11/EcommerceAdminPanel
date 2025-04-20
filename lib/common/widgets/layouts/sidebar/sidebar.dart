import 'package:adminpannel/common/widgets/images/t_circular_image.dart';
import 'package:adminpannel/common/widgets/layouts/menu/menuitem.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/utils/constants/colors.dart';
import 'package:adminpannel/utils/constants/image_strings.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSiderBar extends StatelessWidget {
  const TSiderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: TColors.white,
          border: Border.all(
            color: TColors.grey,
            width: 1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TCircularImage(
                width: 100,
                height: 100,
                backgroundColor: Colors.transparent,
                image: TImages.darkAppLogo,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Menu',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            letterSpacingDelta: 1.2,
                          ),
                    ),
                    // menu Item

                    TMenuItem(
                      iconData: Iconsax.status,
                      route: TRoutes.login,
                      itemName: "Menu",
                    ),
                    TMenuItem(
                      iconData: Iconsax.status,
                      route: TRoutes.brands,
                      itemName: "Media",
                    ),
                    TMenuItem(
                      iconData: Iconsax.status,
                      route: TRoutes.banner,
                      itemName: "Banner",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
