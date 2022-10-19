import 'package:flutter/material.dart';

import '../input_fields/info_input_field.dart';
import '../buttons/reset_password_button.dart';
import 'drop_down_form.dart';

class BvnValidationForm extends StatelessWidget {
  const BvnValidationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoInputField(
              hintText: 'E.g 2345678900', counterText: 'BVN', prefixIcon: null),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 43.0,
            child: UserDropDownOptions(),
          ),
          const SizedBox(
            height: 130.0,
          ),
          SizedBox(
            width: double.infinity,
            child: ResetPasswordButton(
              text: 'Validate',
              buttonPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
