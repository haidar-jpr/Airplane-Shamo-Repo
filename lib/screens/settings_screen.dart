import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/cubit/screen_cubit.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.err),
            ),
          );
        } else if (state is AuthInitial) {
          context.read<ScreenCubit>().setScreen(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-up', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Scaffold(
          body: Center(
            child: CustomButton(
              name: 'Log Out',
              press: () {
                context.read<AuthCubit>().signOut();
              },
              width: 220,
            ),
          ),
        );
      },
    );
  }
}
