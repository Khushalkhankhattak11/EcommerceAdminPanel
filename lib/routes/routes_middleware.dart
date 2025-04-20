// ignore_for_file: dead_code

import 'package:adminpannel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TRoutesMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isAuthenticaed = false;
    return isAuthenticaed ? null : const RouteSettings(name: TRoutes.login);
  }
}
