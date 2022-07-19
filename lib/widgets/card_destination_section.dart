import 'package:flutter/material.dart';

import 'themes.dart';

class CardDestinationSection extends StatelessWidget {
  const CardDestinationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      padding: EdgeInsets.only(
        top: defaultBorder,
        right: defaultBorder,
        bottom: defaultBorder,
      ),

      /// Image section
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultBorder),
            child: Image.asset(
              'assets/images/image-4.png',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          /// Name and place where is the destination
          Padding(
            padding: EdgeInsets.only(left: defaultBorder),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Danau Beratan',
                  style: textStyle1,
                ),
                const SizedBox(height: 6),
                Text(
                  'Singaraja',
                  style: textStyle1.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),

          /// Rating section
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                '4.6',
                style: textStyle1,
              )
            ],
          )
        ],
      ),
    );
  }
}
