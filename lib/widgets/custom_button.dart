import 'package:airplane_shamo/themes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.name,
    this.width = double.infinity,
    required this.press,
  }) : super(key: key);

  final String name;
  final double width;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        minimumSize: Size(
          width,
          55,
        ),
      ),
      child: Text(
        name,
        style: whiteTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
    );
  }
}
