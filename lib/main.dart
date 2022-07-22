import 'package:airplane_shamo/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

import 'screens/bonus_saldo_screen.dart';
import 'screens/choose_seat_screen.dart';
import 'screens/details_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/home_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/success_checkout_screen.dart';

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
        '/': (ctx) => const SplashScreen(),
        '/get-started': (ctx) => const GetStartedScreen(),
        '/sign-up': (ctx) => const SignUpScreen(),
        '/bonus-saldo': (ctx) => const BonusSaldo(),
        '/home-main': (ctx) => const HomeScreen(),
        '/details': (ctx) => const DetailScreen(),
        '/choose-seat': (ctx) => const ChoseSeatScreen(),
        '/success-checkout': (ctx) => const SuccessCheckoutScreen(),
        '/checkout': (ctx) => const CheckoutScreen(),
      },
    );
  }
}
