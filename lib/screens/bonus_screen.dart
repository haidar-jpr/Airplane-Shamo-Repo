import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BonusScreen extends StatelessWidget {
  const BonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(
                left: 38,
                right: 38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //NOTE: Card saldo bonus
                  Container(
                    width: double.infinity,
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
                                  Image.asset('assets/logo/logo.png',
                                      height: 24),
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
                  const SizedBox(height: 91),

                  //NOTE: Text bonus
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Big Bonus',
                        style: blackTextStyle.copyWith(
                            fontSize: 32, fontWeight: semiBold),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.celebration, size: 40),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Text(
                    'We give you early credit so that\nyou can buy a flight ticket',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),

                  //NOTE: Start Fly Now button
                  CustomButton(
                    name: 'Start Fly Now',
                    width: 225,
                    press: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  )
                ],
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
