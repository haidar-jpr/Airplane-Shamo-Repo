import 'package:airplane_shamo/models/destination_models.dart';
import 'package:airplane_shamo/screens/choose_seat_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../themes.dart';
import '../widgets/custom_button.dart';
import '../widgets/interest_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
    this.destination, {
    Key? key,
  }) : super(key: key);

  final DestinationModel destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //NOTE: Background
          Image.network(
            destination.imageURL,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            fit: BoxFit.cover,
          ),

          //NOTE: Details
          SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/icon-globe.png', width: 24),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3),

                      //NOTE: Name products
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //! name product
                              Text(
                                destination.name,
                                style: whiteTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: semiBold,
                                ),
                              ),

                              //! location
                              Text(
                                destination.city,
                                style:
                                    whiteTextStyle.copyWith(fontWeight: light),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),

                              //! Rating
                              Text(
                                destination.rating.toString(),
                                style:
                                    whiteTextStyle.copyWith(fontWeight: medium),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),

                      //NOTE: About products
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: whiteSpace),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),

                              //! Details text products
                              Text(
                                'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                                style: blackTextStyle.copyWith(fontSize: 14),
                              ),
                              const SizedBox(height: 15),

                              //NOTE: Photos
                              Text(
                                'Photos',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              const SizedBox(height: 10),

                              //! Photos
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/image-3.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/image-12.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/image-7.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),

                              //NOTE: Interest
                              Text(
                                'Interest',
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              const SizedBox(height: 10),

                              //! Interest name
                              const InterestDetails(
                                name1: 'Kids Park',
                                name2: 'Honor Bridge',
                              ),
                              const SizedBox(height: 10),
                              const InterestDetails(
                                name1: 'City Museum',
                                name2: 'Central Mall',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: whiteSpace),

                      //NOTE: Price and Book button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //! Price
                              Text(
                                NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                ).format(destination.price),
                                style: blackTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                'per Orang',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                          //! Button
                          CustomButton(
                            name: 'Book Now',
                            width: 170,
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ChooseSeatScreen(destination),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
