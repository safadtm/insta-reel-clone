import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta_reel/home/home_page.dart';
import 'package:insta_reel/login/login_page.dart';

class Authentication extends StatelessWidget {
  Authentication({super.key});

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return const HomePage();
    } else {
      return const LoginPageUI();
    }
  }
}
