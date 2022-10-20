import 'package:airplane_shamo/models/destination_models.dart';
import 'package:airplane_shamo/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class ProductContent extends StatelessWidget {
  const ProductContent(
    this.destination, {
    Key? key,
  }) : super(key: key);

  final DestinationModel destination;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(destination),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  //NOTE: Image
                  child: Image.network(
                    destination.imageURL,
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  margin: const EdgeInsets.only(left: 83),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(destination.rating.toString()),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),

            //NOTE: Content text
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                destination.name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                destination.city,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
