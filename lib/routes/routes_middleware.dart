// ignore_for_file: dead_code

import 'package:adminpannel/common/data/repositior/authentication/authentication_repositiory.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TRoutesMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return AuthenticationRepositiory.instance.isAuthenticated?null:RouteSettings(name: TRoutes.login);
  }
}
