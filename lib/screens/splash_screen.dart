import 'dart:async';
import 'dart:developer';

import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/screens/get_started_screen.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // NOTE: implement initState
    Timer(const Duration(seconds: 3), () {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/get-started',
          (route) => false,
        );
      } else {
        context.read<AuthCubit>().getCurrentUser(user.uid);
        print(user.email);
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/home',
          (route) => false,
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //NOTE: LOGO
        Center(
          child: Image.asset(
            'assets/logo/logo.png',
            width: 100,
          ),
        ),
        SizedBox(
          height: whiteSpace,
        ),

        //NOTE: Name App
        Text(
          'AIRPLANE',
          style: whiteTextStyle.copyWith(
            letterSpacing: 12,
            fontSize: 32,
            fontWeight: medium,
          ),
        )
      ]),
    );
  }
}
