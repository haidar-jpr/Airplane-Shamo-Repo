import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/themes.dart';

class SuccessCheckoutScreen extends StatelessWidget {
  const SuccessCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// !Image section
            Image.asset('assets/icons/icon-calendar.png'),
            SizedBox(height: defaultMargin),

            /// !Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Well Booked',
                  style: textStyle1.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                )
              ],
            ),
            SizedBox(height: defaultBorder),

            ///! Text message
            Text(
              'Are you ready to explore the new world of experiences?',
              style: textStyle1.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w100,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: defaultMargin),

            /// !Button section
            CustomBotton(
              press: () {},
              width: double.infinity,
              height: 50,
              name: 'My Bookings',
            )
          ],
        ),
      ),
    );
  }
}
