import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lets_chat/api/api.dart';
import 'package:lets_chat/screens/auth/login_screen.dart';
import 'package:lets_chat/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (APIs.auth.currentUser != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const HomeScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const LoginScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    late Size mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: mq.height * .35,
            left: mq.width * .25,
            width: mq.width * .5,
            child: Image.asset('images/chat.png')),
        Positioned(
            top: mq.height * .90,
            left: mq.width * .30,
            right: mq.width * .30,
            child: const Text(
              'Made by Rohit Giri',
              style: TextStyle(fontSize: 20),
            )),
      ]),
    );
    ;
  }
}
