import 'package:airplane_shamo/cubit/seat_cubit.dart';
import 'package:airplane_shamo/models/destination_models.dart';
import 'package:airplane_shamo/models/transaction_models.dart';
import 'package:airplane_shamo/screens/checkout_screen.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:airplane_shamo/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatScreen extends StatelessWidget {
  const ChooseSeatScreen(this.destination, {Key? key}) : super(key: key);

  final DestinationModel destination;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: whiteSpace,
              ),
              children: [
                // NOTE: TITLE
                Text(
                  'Select Your\nFavorite Seat',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),

                // NOTE: SEAT STATUS
                Container(
                  margin: EdgeInsets.only(top: whiteSpace),
                  child: Row(
                    children: [
                      // ! AVAILABLE
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: kPrimaryColor.withOpacity(0.6),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Available',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                      const Spacer(),

                      // ! SELECTED
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Selected',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                      const Spacer(),

                      // ! UNAVAILABLE
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Unavailable',
                        style: blackTextStyle.copyWith(fontSize: 12),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),

                // NOTE: SELECT SEAT
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: whiteSpace),
                  padding: EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: whiteSpace,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // NOTE: SEAT INDOCATORS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'A',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'B',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'C',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'D',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // NOTE: SEAT 1
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SeatItems(
                              id: 'A1',
                              isAvailable: false,
                            ),
                            const SeatItems(
                              id: 'B1',
                              isAvailable: false,
                            ),
                            SizedBox(
                              width: 48,
                              height: 48,
                              child: Center(
                                child: Text(
                                  '1',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SeatItems(
                              id: 'C1',
                            ),
                            const SeatItems(
                              id: 'D1',
                            ),
                          ],
                        ),
                      ),

                      // NOTE: SEAT 2
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SeatItems(
                              id: 'A2',
                            ),
                            const SeatItems(
                              id: 'B2',
                            ),
                            SizedBox(
                              width: 48,
                              height: 48,
                              child: Center(
                                child: Text(
                                  '2',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SeatItems(
                              id: 'C2',
                            ),
                            const SeatItems(
                              id: 'D2',
                            ),
                          ],
                        ),
                      ),

                      // NOTE: SEAT 3
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SeatItems(
                              id: 'A3',
                            ),
                            const SeatItems(
                              id: 'B3',
                            ),
                            SizedBox(
                              width: 48,
                              height: 48,
                              child: Center(
                                child: Text(
                                  '3',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SeatItems(
                              id: 'C3',
                            ),
                            const SeatItems(
                              id: 'D3',
                            ),
                          ],
                        ),
                      ),

                      // NOTE: SEAT 4
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SeatItems(
                              id: 'A4',
                            ),
                            const SeatItems(
                              id: 'B4',
                            ),
                            SizedBox(
                              width: 48,
                              height: 48,
                              child: Center(
                                child: Text(
                                  '4',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SeatItems(
                              id: 'C4',
                            ),
                            const SeatItems(
                              id: 'D4',
                            ),
                          ],
                        ),
                      ),

                      // NOTE: SEAT 5
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16,
                          bottom: whiteSpace,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SeatItems(
                              id: 'A5',
                            ),
                            const SeatItems(
                              id: 'B5',
                            ),
                            SizedBox(
                              width: 48,
                              height: 48,
                              child: Center(
                                child: Text(
                                  '5',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SeatItems(
                              isAvailable: false,
                              id: 'C5',
                            ),
                            const SeatItems(
                              id: 'D5',
                            ),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your seat',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                state.join(', '),
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'IDR ',
                              decimalDigits: 0,
                            ).format(state.length * destination.price),
                            style: primaryTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: whiteSpace),
                    ],
                  ),
                ),

                BlocBuilder<SeatCubit, List<String>>(
                  builder: (context, state) {
                    int price = destination.price * state.length;

                    return CustomButton(
                      name: 'Continue to Checkout',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutScreen(
                              TransactionModel(
                                destination: destination,
                                amountOfTraveller: state.length,
                                selectedSeat: state.join(', '),
                                insurance: true,
                                refundable: false,
                                vat: 0.45,
                                price: price,
                                grandTotal: price + (price * 0.45).toInt(),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
