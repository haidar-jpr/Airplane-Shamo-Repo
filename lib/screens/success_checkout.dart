import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: whiteSpace,
          ),
          child: Column(
            children: [
              //NOTE: Calendar image
              const Spacer(),
              Image.asset('assets/icons/icon-calendar.png'),
              const SizedBox(height: 80),

              //NOTE: Text message
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Well Booked',
                    style: blackTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: bold,
                    ),
                  ),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    size: 40,
                    color: kPrimaryColor,
                  )
                ],
              ),

              Text(
                'Are you ready to explore the new world of experiences?',
                style: greyTextStyle.copyWith(fontWeight: light),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),

              //NOTE: My bookings button
              CustomButton(
                name: 'My Bookings',
                press: () {
                  Navigator.pushNamed(context, '/transaction');
                },
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
