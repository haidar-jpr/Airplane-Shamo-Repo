import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/cubit/destinations_cubit.dart';
import 'package:airplane_shamo/models/destination_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../themes.dart';
import '../widgets/new_products_content.dart';
import '../widgets/products_content.dart';

class MainContent extends StatefulWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  void initState() {
    context.read<DestinationsCubit>().fetchDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: ListView(
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is AuthSuccess) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Howdy,\n${state.user.name}',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/image-1.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            const SizedBox(height: 6),
            Text(
              'Where to fly today?',
              style: greyTextStyle,
            ),
            SizedBox(height: whiteSpace),

            //NOTE: Products content
            BlocConsumer<DestinationsCubit, DestinationsState>(
              listener: (context, state) {
                if (state is DestinationsFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: kRedColor,
                      content: Text(state.err),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is DestinationsSuccsess) {
                  return SizedBox(
                    width: double.infinity,
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: state.destinations
                          .map((DestinationModel destination) {
                        return ProductContent(destination);
                      }).toList(),
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            SizedBox(height: whiteSpace),

            //NOTE: New Contents Destination
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 16),

            BlocConsumer<DestinationsCubit, DestinationsState>(
              listener: (context, state) {
                if (state is DestinationsFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: kRedColor,
                      content: Text(state.err),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is DestinationsSuccsess) {
                  return Column(
                    children:
                        state.destinations.map((DestinationModel destination) {
                      return NewProductsContent(destination);
                    }).toList(),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
