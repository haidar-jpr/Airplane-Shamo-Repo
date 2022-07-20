import 'package:flutter/material.dart';

import '../widgets/themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Image app logo
            Image.asset(
              'assets/logo/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(height: defaultMargin),

            /// App name
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
