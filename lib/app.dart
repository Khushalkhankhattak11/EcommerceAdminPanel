// ignore_for_file: deprecated_member_use

import 'package:adminpannel/routes/app_routes.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/utils/constants/text_strings.dart';
import 'package:adminpannel/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      getPages: TAppRoutes.pages,
      initialRoute: TRoutes.login,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () => Scaffold(
                body: Center(
                  child: Text('Page not Found'),
                ),
              )),
    );
  }
}
