import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/intro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      navigateToNextScreen();
    });
  }

  Future<void> navigateToNextScreen() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro()));

    // if (user != null) {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
    // } else {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Intro()));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 145, 214),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpg")
          ],
        ),
      ),
    );
  }
}
