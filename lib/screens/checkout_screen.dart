import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/cubit/transaction_cubit.dart';
import 'package:airplane_shamo/models/transaction_models.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen(this.transaction, {Key? key}) : super(key: key);

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: whiteSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //NOTE: Route image
                  Center(
                    child: Image.asset(
                      'assets/icons/icon-fly-route.png',
                      width: MediaQuery.of(context).size.width * 0.75,
                    ),
                  ),
                  const SizedBox(height: 10),

                  //NOTE: Name Fly Route
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CKG',
                            style: blackTextStyle.copyWith(
                              fontSize: 22,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Tangerang',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'TLC',
                            style: blackTextStyle.copyWith(
                              fontSize: 22,
                              fontWeight: bold,
                            ),
                          ),
                          Text(
                            'Ciliwung',
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: whiteSpace),

                  //NOTE: Booking details
                  Row(
                    children: [
                      //! image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          transaction.destination.imageURL,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),

                      //! name products
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.destination.name,
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                          Text(
                            transaction.destination.city,
                            style: greyTextStyle.copyWith(fontWeight: light),
                          )
                        ],
                      ),
                      const Spacer(),

                      //! rating
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            transaction.destination.rating.toString(),
                            style: blackTextStyle.copyWith(fontWeight: medium),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  //! details
                  Text(
                    'Booking Details',
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  ),
                  const SizedBox(height: 10),

                  //! traveler
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Traveler',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${transaction.amountOfTraveller.toString()} person',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! Seat
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Seat',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        transaction.selectedSeat,
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! Insurance
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Insurance',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        transaction.insurance == true ? 'YES' : 'NO',
                        style: transaction.insurance == true
                            ? greenTextStyle.copyWith(fontWeight: bold)
                            : redTextStyle.copyWith(fontWeight: bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! Refundable
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Refundable',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        transaction.refundable == true ? 'YES' : 'NO',
                        style: transaction.refundable == true
                            ? greenTextStyle.copyWith(fontWeight: bold)
                            : redTextStyle.copyWith(fontWeight: bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! VAT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'VAT',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${(transaction.vat * 100).toStringAsFixed(0)}%',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Price',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(transaction.price),
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  //! Grand total price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/icon-check.png',
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Grand Total',
                            style: blackTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(transaction.grandTotal),
                        style: primaryTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: whiteSpace + 30),

                  //NOTE: Payment Details
                  Text(
                    'Payment Details',
                    style: blackTextStyle.copyWith(fontWeight: bold),
                  ),
                  const SizedBox(height: 15),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (state is AuthSuccess) {
                        return Row(
                          children: [
                            Container(
                              width: 110,
                              height: 70,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/logo/logo.png',
                                    width: 24,
                                    height: 24,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Pay',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: semiBold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),

                            //! Current balance
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                  ).format(state.user.balance),
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  'Current Balance',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  SizedBox(height: whiteSpace),

                  //NOTE: Custom button
                  BlocConsumer<TransactionCubit, TransactionState>(
                    listener: (context, state) {
                      if (state is TransactionSuccess) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/success', (route) => false);
                      } else if (state is TransactionFailed) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: kRedColor,
                            content: Text(state.err),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is TransactionLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return CustomButton(
                        name: 'Pay Now',
                        press: () {
                          context
                              .read<TransactionCubit>()
                              .createTransaction(transaction);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 15),

                  //NOTE: Term and conditions
                  Center(
                    child: Text(
                      'Term and Conditions',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
