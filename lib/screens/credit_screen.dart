import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CreditScreen extends StatelessWidget {
  const CreditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Scaffold(
            body:
                //NOTE: Card saldo bonus
                Center(
              child: Container(
                width: 300,
                height: 211,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //NOTE: ROW name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: whiteTextStyle.copyWith(
                                    fontWeight: light,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                              Text(
                                state.user.name,
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: medium,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/logo/logo.png', height: 24),
                              const SizedBox(width: 7),
                              Text(
                                'Pay',
                                style: whiteTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),

                      //NOTE: ROW balance
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance',
                            style: whiteTextStyle.copyWith(
                                fontWeight: light,
                                color: Colors.white.withOpacity(0.7)),
                          ),
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'IDR ',
                              decimalDigits: 0,
                            ).format(state.user.balance),
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
