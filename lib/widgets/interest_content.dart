import 'package:flutter/material.dart';

import 'themes.dart';

class InterestContent extends StatelessWidget {
  const InterestContent({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/icon-check.png',
          width: 16,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8),
        Text(
          name,
          style: textStyle1,
        )
      ],
    );
  }
}
