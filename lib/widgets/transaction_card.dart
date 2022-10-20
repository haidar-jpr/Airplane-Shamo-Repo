import 'package:airplane_shamo/models/transaction_models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../themes.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
