import 'package:adminpannel/features/authenction/screens/login/login_screen.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:get/get.dart';

class TAppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.login, page: () => LoginScreen()),
    //GetPage(name: TRoutes.forgetPassword, page: () => ResponsiveLayout()),
    // GetPage(name: TRoutes.resetPassword, page: () => ResponsiveLayout()),
  ];
}
