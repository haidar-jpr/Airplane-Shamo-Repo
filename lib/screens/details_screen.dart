import 'package:airplane_shamo/widgets/themes.dart';
import 'package:flutter/material.dart';

import '../widgets/interest_content.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /// Background Image
            Image.asset(
              'assets/images/image-1.png',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              fit: BoxFit.cover,
            ),

            /// Content section
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: defaultMargin + 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/icon-globe.png',
                      width: 24,
                      color: colorBg2,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.3),

                    /// Header content
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lake Ciliwung',
                                style: textStyle1.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: colorBg2,
                                ),
                              ),
                              Text(
                                'Tangerang',
                                style: textStyle1.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                  color: colorBg2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.9',
                                style: textStyle1.copyWith(
                                  color: colorBg2,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: defaultBorder),

                    /// Card content
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.6,
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultBorder,
                        vertical: defaultMargin,
                      ),
                      decoration: BoxDecoration(
                        color: colorBg2,
                        borderRadius: BorderRadius.circular(defaultBorder),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// About section
                          Text(
                            'About',
                            style: textStyle1.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Expanded(
                            child: Text(
                              'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                              style: textStyle1,
                              textAlign: TextAlign.start,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: defaultMargin),

                          /// Photos section
                          Text(
                            'Photos',
                            style: textStyle1.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: defaultBorder),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      defaultBorder,
                                    ),
                                    child: Image.asset(
                                      'assets/images/image-3.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: defaultMargin),

                          /// Interests section
                          Text(
                            'Interests',
                            style: textStyle1.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              InterestContent(
                                name: 'Kids Park',
                              ),
                              InterestContent(
                                name: 'City Museum',
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              InterestContent(
                                name: 'Honor Bridge',
                              ),
                              InterestContent(
                                name: 'Central Mall',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: defaultBorder),

                    /// Booking section
                    Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IDR 7.000.000',
                                style: textStyle1.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'per orang',
                                style: textStyle1.copyWith(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: defaultMargin),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: colorBg,
                                padding: EdgeInsets.symmetric(
                                  horizontal: defaultMargin + 10,
                                  vertical: defaultBorder,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(defaultBorder),
                                ),
                              ),
                              child: Text(
                                'Book Now',
                                style: textStyle1.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: defaultMargin),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
