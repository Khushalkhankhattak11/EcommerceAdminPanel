import 'package:adminpannel/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class AuthenticationRepositiory extends GetxController{

  static AuthenticationRepositiory get instance => Get.find();


  /// firebase auth instance
  final auth =FirebaseAuth.instance;

  /// Get authentication user data
 User? get authUser  => auth.currentUser;

  /// Get authentication user
  bool  get isAuthenticated =>auth.currentUser !=null;


  @override
  void onReady() {
   auth.setPersistence(Persistence.LOCAL);
  }



}