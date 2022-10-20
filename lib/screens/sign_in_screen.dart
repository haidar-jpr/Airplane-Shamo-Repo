import 'package:airplane_shamo/cubit/auth_cubit.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //NOTE: Header
                Text(
                  'Sign in with your existing account',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: whiteSpace),

                //NOTE: Email address textform field
                Text(
                  'Email Address',
                  style: blackTextStyle,
                ),
                const SizedBox(height: 6),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    hintText: 'Your email address',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),

                //NOTE: Password textform field
                Text(
                  'Password',
                  style: blackTextStyle,
                ),
                const SizedBox(height: 6),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    hintText: 'Your password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 30),

                //NOTE: Get started button
                Center(
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      } else if (state is AuthFailed) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: kRedColor,
                            content: Text(state.err),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is AuthLoading) {
                        const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return CustomButton(
                        name: 'Login',
                        width: 287,
                        press: () {
                          context.read<AuthCubit>().signIn(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),

                //NOTE: Term and conditions
                Center(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/sign-up'),
                    child: Text(
                      'Don\'t have an account? Sign Up',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
