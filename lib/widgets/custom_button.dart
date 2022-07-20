import 'package:flutter/material.dart';

import 'themes.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    Key? key,
    required this.press,
    this.width,
    required this.height,
    required this.name,
  }) : super(key: key);

  final VoidCallback press;
  final double? width;
  final double height;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          width!,
          height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultBorder),
        ),
        primary: colorBg,
      ),
      child: Text(
        name,
        style: textStyle1,
      ),
    );
  }
}
