import 'package:airplane_shamo/screens/bonus_saldo_screen.dart';
import 'package:airplane_shamo/screens/choose_seat_screen.dart';
import 'package:airplane_shamo/screens/details_screen.dart';
import 'package:airplane_shamo/screens/get_started_screen.dart';
import 'package:airplane_shamo/screens/home_screen.dart';
import 'package:airplane_shamo/screens/sign_up_screen.dart';
import 'package:airplane_shamo/screens/splash_screen.dart';
import 'package:airplane_shamo/screens/success_checkout_screen.dart';
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
        '/': (_) => const SplashScreen(),
        '/get-started': (_) => const GetStartedScreen(),
        '/sign-up': (_) => const SignUpScreen(),
        '/bonus-saldo': (_) => const BonusSaldo(),
        '/home-main': (_) => const HomeScreen(),
        '/details': (_) => const DetailScreen(),
        '/choose-seat': (_) => const ChoseSeatScreen(),
        '/success-checkout': (_) => const SuccessCheckoutScreen(),
      },
    );
  }
}
