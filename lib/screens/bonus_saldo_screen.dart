import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/themes.dart';

class BonusSaldo extends StatelessWidget {
  const BonusSaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// !Card
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(defaultBorder + 5),
              decoration: BoxDecoration(
                color: colorBg,
                gradient: LinearGradient(
                  colors: [colorBg, colorBg2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(defaultMargin),
              ),

              /// !Identity user
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Name',
                            style: textStyle1.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              color: colorBg2,
                            ),
                          ),
                          Text(
                            'Ananda Rea',
                            style: textStyle1.copyWith(
                              color: colorBg2,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),

                      /// !Logo image and text
                      Wrap(
                        children: [
                          Image.asset(
                            'assets/logo/logo.png',
                            width: 25,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Pay',
                            style: textStyle1.copyWith(color: colorBg2),
                          )
                        ],
                      ),
                    ],
                  ),

                  /// !Balance section
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Balance',
                        style: textStyle1.copyWith(
                          color: colorBg2,
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'IDR 280.000.000',
                        style: textStyle1.copyWith(
                          color: colorBg2,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),

            /// !Text  title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Big Bonus',
                  style: textStyle1.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  size: 35,
                  color: Colors.red,
                )
              ],
            ),
            const SizedBox(height: 6),

            /// !Text body
            Text(
              'We give you early credit so that\n you can buy a flight ticket',
              style: textStyle1.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            /// !Botton fly
            CustomBotton(
              press: () {
                Navigator.pushNamed(context, '/home-main');
              },
              width: MediaQuery.of(context).size.width * 0.6,
              height: 50,
              name: 'Start Fly Now',
            )
          ],
        ),
      ),
    );
  }
}
