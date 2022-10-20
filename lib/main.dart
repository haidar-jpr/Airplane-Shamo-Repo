import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/cubit/destinations_cubit.dart';
import 'package:airplane_shamo/cubit/screen_cubit.dart';
import 'package:airplane_shamo/cubit/seat_cubit.dart';
import 'package:airplane_shamo/cubit/transaction_cubit.dart';
import 'package:airplane_shamo/screens/bonus_screen.dart';
import 'package:airplane_shamo/screens/checkout_screen.dart';
import 'package:airplane_shamo/screens/choose_seat_screen.dart';
import 'package:airplane_shamo/screens/credit_screen.dart';
import 'package:airplane_shamo/screens/details_screen.dart';
import 'package:airplane_shamo/screens/get_started_screen.dart';
import 'package:airplane_shamo/screens/home_screen.dart';
import 'package:airplane_shamo/screens/settings_screen.dart';
import 'package:airplane_shamo/screens/sign_in_screen.dart';
import 'package:airplane_shamo/screens/sign_up_screen.dart';
import 'package:airplane_shamo/screens/splash_screen.dart';
import 'package:airplane_shamo/screens/success_checkout.dart';
import 'package:airplane_shamo/screens/transaction_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ScreenCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationsCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/sign-up': (context) => SignUpScreen(),
          '/sign-in': (context) => SignInScreen(),
          '/get-started': (context) => const GetStartedScreen(),
          '/bonus': (context) => const BonusScreen(),
          '/home': (context) => const HomeScreen(),
          '/success': (context) => const SuccessCheckout(),
          '/transaction': (context) => const TransactionScreen(),
          '/credit': (context) => const CreditScreen(),
          '/setting': (context) => const SettingsScreen(),
        },
      ),
    );
  }
}
