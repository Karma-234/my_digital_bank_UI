import 'package:flutter/material.dart';

import '../otp_input_field.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpInputField(),
          OtpInputField(),
          OtpInputField(),
          OtpInputField(),
          OtpInputField(),
          OtpInputField(),
        ],
      ),
    );
  }
}
