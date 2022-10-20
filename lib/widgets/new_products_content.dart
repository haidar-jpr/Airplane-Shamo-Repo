import 'package:airplane_shamo/models/destination_models.dart';
import 'package:flutter/material.dart';

import '../screens/details_screen.dart';
import '../themes.dart';

class NewProductsContent extends StatelessWidget {
  const NewProductsContent(
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
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            //! Image
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                destination.imageURL,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            //! Name products
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  destination.city,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            const Spacer(),

            //! Rating
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  destination.rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
