import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meals/screens/tabs.dart';
import 'package:meals/screens/auth/login.dart';
import 'package:meals/screens/auth/verify_email.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return LoginScreen();
    } else if (!user.emailVerified) {
      return VerifyEmailScreen();
    } else {
      return TabsScreen();
    }
  }
}
