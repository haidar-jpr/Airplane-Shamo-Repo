import 'package:airplane_shamo/cubit/screen_cubit.dart';
import 'package:airplane_shamo/screens/credit_screen.dart';
import 'package:airplane_shamo/screens/settings_screen.dart';
import 'package:airplane_shamo/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../themes.dart';
import '../widgets/custom_bottom_navbar.dart';
import 'main_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              //NOTE: Main content view
              currentIndex == 0
                  ? const MainContent()
                  : currentIndex == 1
                      ? const TransactionScreen()
                      : currentIndex == 2
                          ? const CreditScreen()
                          : currentIndex == 3
                              ? const SettingsScreen()
                              : const MainContent(),

              //NOTE: Custom bottom navigation bar
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomBottomNavbar(
                        index: 0,
                        imageURL: 'assets/icons/icon-globe.png',
                      ),
                      CustomBottomNavbar(
                        index: 1,
                        imageURL: 'assets/icons/icon-book.png',
                      ),
                      CustomBottomNavbar(
                        index: 2,
                        imageURL: 'assets/icons/icon-credit.png',
                      ),
                      CustomBottomNavbar(
                        index: 3,
                        imageURL: 'assets/icons/icon-settings.png',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
