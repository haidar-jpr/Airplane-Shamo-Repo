import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:airplane_shamo/widgets/themes.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultBorder,
              vertical: defaultMargin,
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// !Image route section
                Image.asset(
                  'assets/icons/icon-fly-route.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),

                /// !Destination code section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CGK',
                      style: textStyle1.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'TLC',
                      style: textStyle1.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                /// !Destination name section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tangerang',
                      style: textStyle1.copyWith(
                        fontWeight: FontWeight.w100,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: textStyle1.copyWith(
                        fontWeight: FontWeight.w100,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: defaultMargin),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultBorder),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// !Destination information section
                      Row(
                        children: [
                          /// !Image destination section
                          ClipRRect(
                            borderRadius: BorderRadius.circular(defaultBorder),
                            child: Image.asset(
                              'assets/images/image-1.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: defaultBorder),

                          /// !Name destination section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lake Cilliwung',
                                style: textStyle1.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Tangerang',
                                style: textStyle1.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),

                          /// !Rating section
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.4',
                                style: textStyle1,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: defaultBorder),

                      /// !Booking details setion
                      Text(
                        'Booking Details',
                        style: textStyle1.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),

                      /// !Details section
                      BookingDetails(
                        nameData: 'Traveler',
                        valueData: '2 person',
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'Seat',
                        valueData: 'A2, A3',
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'Insurance',
                        valueData: 'YES',
                        color: Colors.green,
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'Refoundable',
                        valueData: 'NO',
                        color: Colors.red,
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'VAT',
                        valueData: '45%',
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'Price',
                        valueData: 'IDR 8.500.690',
                      ),
                      const SizedBox(height: 6),
                      BookingDetails(
                        nameData: 'Grand Total',
                        valueData: 'IDR 12.000.000',
                        color: colorBg,
                      ),
                      SizedBox(height: defaultMargin),

                      /// !Payment Details
                      Text(
                        'Payment Details',
                        style: textStyle1.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: defaultBorder),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 70,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: colorBg,
                              borderRadius:
                                  BorderRadius.circular(defaultBorder),
                              gradient: LinearGradient(
                                colors: [colorBg, colorBg2],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: const [0.4, 1],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                /// !Pay image
                                Image.asset(
                                  'assets/logo/logo.png',
                                  width: 26,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Pay',
                                  style: textStyle1.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: colorBg2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: defaultBorder),

                          /// !Total section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IDR 80.400.000',
                                style: textStyle1.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Current Balance',
                                style: textStyle1.copyWith(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: defaultMargin + 20),

                /// !Custom botton section
                CustomBotton(
                  press: () {},
                  width: double.infinity,
                  height: 50,
                  name: 'Pay Now',
                ),
                SizedBox(height: defaultMargin),

                /// !Terms and conditions section
                Text(
                  'Terms and Conditions',
                  style: textStyle1.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BookingDetails extends StatelessWidget {
  const BookingDetails({
    Key? key,
    required this.nameData,
    required this.valueData,
    this.color,
  }) : super(key: key);

  final String nameData;
  final String valueData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/icon-check.png',
          width: 16,
        ),
        const SizedBox(width: 8),
        Text(
          nameData,
          style: textStyle1,
        ),
        const Spacer(),
        Text(
          valueData,
          style: textStyle1.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
