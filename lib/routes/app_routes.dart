import 'package:adminpannel/features/authenction/screens/forgetpassword/forgetpassword_screen.dart';
import 'package:adminpannel/features/authenction/screens/login/login_screen.dart';
import 'package:adminpannel/features/authenction/screens/resetpassword/resetpassword_screen.dart';
import 'package:adminpannel/features/dashboard.dart';
import 'package:adminpannel/routes/routes.dart';
import 'package:adminpannel/routes/routes_middleware.dart';
import 'package:get/get.dart';

class TAppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: TRoutes.login, page: () => LoginScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => ForgetPasswordScreen()),
    GetPage(name: TRoutes.resetPassword, page: () => ResetPasswordScreen()),
    GetPage(name: TRoutes.dashboard, page: () => DashboardScreen(),middlewares: [TRoutesMiddleWare()]),
  ];
}
