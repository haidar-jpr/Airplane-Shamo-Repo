import 'package:flutter/material.dart';

import '../themes.dart';

class InterestDetails extends StatelessWidget {
  const InterestDetails({
    Key? key,
    required this.name1,
    required this.name2,
  }) : super(key: key);

  final String name1;
  final String name2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/icon-check.png',
              width: 20,
            ),
            const SizedBox(width: 10),
            Text(
              name1,
              style: blackTextStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/icon-check.png',
              width: 20,
            ),
            const SizedBox(width: 10),
            Text(
              name2,
              style: blackTextStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
