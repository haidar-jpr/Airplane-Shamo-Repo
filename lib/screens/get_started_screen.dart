import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //NOTE: Background image
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),

          //NOTE: Text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'Fly Like a Bird',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              //NOTE: Get started button
              CustomButton(
                name: 'Get Started',
                width: 220,
                press: () {
                  Navigator.pushReplacementNamed(context, '/sign-up');
                },
              ),
              const SizedBox(height: 80),
            ],
          ),
        ],
      ),
    );
  }
}
