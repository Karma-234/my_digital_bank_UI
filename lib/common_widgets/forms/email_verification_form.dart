import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../info_input_field.dart';
import '../reset_password_button.dart';

class EmailVerificationForm extends StatelessWidget {
  const EmailVerificationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const InfoInputField(
            hintText: 'Enter email',
            counterText: 'Email address',
            prefixIcon: Icon(
              Icons.mail,
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(
            height: 190.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ResetPasswordButton(
              text: 'Email OTP code',
              buttonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
