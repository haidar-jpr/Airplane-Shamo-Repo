import 'package:flutter/material.dart';

import '../widgets/sign_up_fields.dart';
import '../widgets/themes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg2,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Text title
              Text(
                'Join us and get\n your next journey',
                style: textStyle1.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: defaultMargin + 10),

              /// Input data sign up user section
              const SignUpField(
                name: 'Full Name',
                hint: 'John Doe',
                obsecure: false,
              ),
              const SignUpField(
                name: 'Email Address',
                hint: 'example@gmail.com',
                obsecure: false,
              ),
              const SignUpField(
                name: 'Password',
                hint: '*****',
                obsecure: true,
              ),
              const SignUpField(
                name: 'Hobby',
                hint: 'Traveling',
                obsecure: false,
              ),

              /// Sign up button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultBorder),
                  ),
                  primary: colorBg,
                ),
                child: Text(
                  'Sign Up',
                  style: textStyle1,
                ),
              ),
              const Spacer(),

              /// Term and condition
              Expanded(
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                    ),
                    child: Text(
                      'Terms and Conditions',
                      style: textStyle1.copyWith(
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
