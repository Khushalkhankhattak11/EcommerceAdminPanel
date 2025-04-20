import 'package:adminpannel/common/widgets/layouts/menu/sidebar_controller.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteObserver extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if (previousRoute != null) {
      for (var routeName in TRoutes.sideBarMenuItem) {
        if (previousRoute.settings.name == routeName) {
          sidebarController.activeItem.value == routeName;
        }
      }
    }
  }
}
