import 'package:airplane_shamo/widgets/themes.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// Background image
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),

          /// Text
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
              ),

              /// Text title
              Text(
                'Fly Like a Bird',
                style: textStyle1.copyWith(
                  color: colorW,
                  fontSize: defaultMargin,
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// Text body
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Explore new world with us and let\n yourself get an amazing experiences',
                  style: textStyle1.copyWith(
                    color: colorW,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              /// Button
              Padding(
                padding: EdgeInsets.only(top: defaultMargin + 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: colorBg,
                      minimumSize: Size(
                        MediaQuery.of(context).size.width * 0.7,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(defaultBorder),
                      )),
                  child: Text(
                    'Get Started',
                    style: textStyle1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
