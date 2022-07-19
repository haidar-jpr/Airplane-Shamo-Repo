import 'package:flutter/material.dart';

import 'themes.dart';

class TourismDestinationSection extends StatelessWidget {
  const TourismDestinationSection({
    Key? key,
    required this.url,
    required this.rating,
  }) : super(key: key);

  final String url;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Stack(
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(right: defaultBorder),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(defaultBorder),
              ),
            ),
            Positioned(
              right: 0.01,
              child: Container(
                width: 70,
                height: 35,
                margin: EdgeInsets.only(right: defaultBorder),
                decoration: BoxDecoration(
                  color: colorBg2,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultBorder),
                    topRight: Radius.circular(defaultBorder),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      rating,
                      style: textStyle1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),

        /// Name and location destination
        Text(
          'Lake Ciliwung',
          style: textStyle1.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          'Tangerang',
          style: textStyle1.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
