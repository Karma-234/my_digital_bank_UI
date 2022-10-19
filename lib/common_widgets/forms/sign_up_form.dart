import 'package:flutter/material.dart';

import '../info_input_field.dart';
import '../phone_number_field.dart';
import '../reset_password_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const InfoInputField(
              hintText: 'Matthew Brown',
              counterText: 'Fullname',
              prefixIcon: null),
          const SizedBox(
            height: 20.12,
          ),
          const InfoInputField(
              hintText: 'E.g matthew@gmail.com',
              counterText: 'Email',
              prefixIcon: null),
          const SizedBox(
            height: 20.12,
          ),
          const PhoneNumberField(numberCounterText: 'PhoneNumber'),
          const SizedBox(
            height: 70.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ResetPasswordButton(
              text: 'Sign Up',
              buttonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}