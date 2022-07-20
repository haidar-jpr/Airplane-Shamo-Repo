import 'dart:async';

import 'package:airplane_shamo/screens/get_started_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacementNamed(context, '/get-started');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///! Image app logo
            Image.asset(
              'assets/logo/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(height: defaultMargin),

            ///! App name
            Text(
              'Airplane'.toUpperCase(),
              style: textStyle1.copyWith(
                letterSpacing: 10,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
