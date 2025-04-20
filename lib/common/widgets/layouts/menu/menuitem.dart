import 'package:adminpannel/common/widgets/layouts/menu/sidebar_controller.dart';
import 'package:adminpannel/utils/constants/colors.dart';
import 'package:adminpannel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TMenuItem extends StatelessWidget {
  final String route;
  final String itemName;
  final IconData iconData;
  const TMenuItem({
    super.key,
    required this.route,
    required this.itemName,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());

    return InkWell(
      onTap: () => menuController.menuOnTap(route),
      onHover: (hovering) => hovering
          ? menuController.changeHoverItem(route)
          : menuController.changeHoverItem(''),
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
          child: Container(
            decoration: BoxDecoration(
              color: menuController.isHover(route) ||
                      menuController.isActive(route)
                  ? TColors.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusMd),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: TSizes.lg,
                      right: TSizes.md,
                      top: TSizes.md,
                      bottom: TSizes.md),
                  child: menuController.isActive(route)
                      ? Icon(
                          iconData,
                          size: 22,
                          color: TColors.white,
                        )
                      : Icon(
                          iconData,
                          size: 22,
                          color: menuController.isHover(route)
                              ? TColors.white
                              : TColors.darkGrey,
                        ),
                ),
                if (menuController.isHover(route) ||
                    menuController.isActive(route))
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.white),
                    ),
                  )
                else
                  Flexible(
                    child: Text(
                      itemName,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.darkGrey,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
