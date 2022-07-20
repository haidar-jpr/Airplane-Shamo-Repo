import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import '../widgets/custom_button.dart';
import '../widgets/themes.dart';

class ChoseSeatScreen extends StatefulWidget {
  const ChoseSeatScreen({Key? key}) : super(key: key);

  @override
  State<ChoseSeatScreen> createState() => _ChoseSeatScreenState();
}

class _ChoseSeatScreenState extends State<ChoseSeatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultBorder,
            vertical: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// !Header section
              Text(
                'Select Your \nFavorite Seat',
                style: textStyle1.copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: defaultMargin),

              /// !Button group seat
              GroupButton(
                isRadio: true,
                onSelected: (value, index, isSelected) =>
                    print('$index button pressed'),
                buttons: const ['Available', 'Selected', 'Unavailable'],
                options: GroupButtonOptions(
                  borderRadius: BorderRadius.circular(defaultBorder),
                  selectedColor: colorBg,
                  elevation: 1,
                  selectedShadow: [
                    BoxShadow(
                      color: colorBg2,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  unselectedShadow: [
                    BoxShadow(
                      color: colorBg2,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),

              /// ! Choose seat section
              /// TODO See video tutorial for more experience
              SizedBox(height: defaultBorder),

              /// !Total cost section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: textStyle1.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey,
                    ),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        'A3, B3',
                        style: textStyle1.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: defaultBorder),

              /// !Total cost setion (2)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: textStyle1.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: textStyle1.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorBg,
                    ),
                  )
                ],
              ),
              const Spacer(),

              /// !Button section
              CustomBotton(
                press: () {},
                width: double.infinity,
                height: 50,
                name: 'Continue to Checkout',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
