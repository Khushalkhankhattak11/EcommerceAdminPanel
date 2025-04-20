import 'package:adminpannel/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDsGdcnXxQ1McvcjjMtpgLIkAUw0-MnqdA",
        authDomain: "adminecommerce-f7336.firebaseapp.com",
        projectId: "adminecommerce-f7336",
        storageBucket: "adminecommerce-f7336.appspot.com",
        messagingSenderId: "561609644517",
        appId: "1:561609644517:web:0b7be75fa3e08e62ff770c"),
  );

  runApp(
    const MyApp(),
  );
}
