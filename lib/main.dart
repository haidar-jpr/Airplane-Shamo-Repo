import 'package:airplane_shamo/screens/bonus_saldo_screen.dart';
import 'package:airplane_shamo/screens/details_screen.dart';
import 'package:airplane_shamo/screens/get_started_screen.dart';
import 'package:airplane_shamo/screens/home_screen.dart';
import 'package:airplane_shamo/screens/sign_up_screen.dart';
import 'package:airplane_shamo/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/get-started': (context) => const GetStartedScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/bonus-saldo': (context) => const BonusSaldo(),
        '/home-main': (context) => const HomeScreen(),
        '/details': (context) => const DetailScreen(),
      },
    );
  }
}
