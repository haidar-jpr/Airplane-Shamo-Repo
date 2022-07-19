import 'package:flutter/material.dart';

import 'themes.dart';

class SignUpField extends StatelessWidget {
  const SignUpField({
    required this.hint,
    required this.name,
    Key? key,
    required this.obsecure,
  }) : super(key: key);

  final String name;
  final bool obsecure;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Name field
        Text(
          name,
          style: textStyle1,
        ),
        const SizedBox(height: 6),

        /// Textfield
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorder),
            ),
            hintText: hint,
            hintStyle: textStyle1.copyWith(fontSize: 14),
          ),
          obscureText: obsecure,
        ),
        SizedBox(height: defaultMargin - 10)
      ],
    );
  }
}
