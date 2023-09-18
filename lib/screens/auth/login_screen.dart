import 'dart:io';
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lets_chat/api/api.dart';
import 'package:lets_chat/helper/dialogs.dart';
import 'package:lets_chat/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Size mq = MediaQuery.of(context).size;

  _handleGoogleBtnClick() {
    Dialogs.showProgressbar(context);
    _signInWithGoogle().then((value) async {
      Navigator.pop(context);
      if (value != null) {
        if ((await APIs.userExists())) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        } else {
          await APIs.createUser().then((value) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          });
        }
      }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      await InternetAddress.lookup('google.com');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await APIs.auth.signInWithCredential(credential);
    } catch (e) {
      Dialogs.showSnackbar(context, 'Something Went Wrong (Check Internet)');
      return null;
    }
  }

  _signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            top: mq.height * .15,
            left: mq.width * .25,
            width: mq.width * .5,
            child: const Text(
              "WelcomeTo Lets Chat...",
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            top: mq.height * .35,
            left: mq.width * .25,
            width: mq.width * .5,
            child: Image.asset('images/chat.png')),
        Positioned(
            bottom: mq.height * .15,
            height: mq.height * .07,
            left: mq.width * .06,
            width: mq.width * .9,
            child: InkWell(
              onTap: () {
                _handleGoogleBtnClick();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 219, 255, 178),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 30,
                        width: 30,
                        child: Image.asset('images/google.png')),
                    const SizedBox(
                      width: 45,
                    ),
                    const Text(
                      'Sign in with google',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )),
      ]),
    );
  }
}
