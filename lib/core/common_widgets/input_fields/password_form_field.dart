import 'package:flutter/material.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';

import '../../app_colors/app_colors.dart';

class NewPasswordFormField extends StatelessWidget {
  const NewPasswordFormField(
      {Key? key,
      required this.hintPass,
      this.controller,
      this.validator,
      this.counter = ''})
      : super(key: key);
  final String hintPass;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String counter;
  final inputBorder = const UnderlineInputBorder(
    borderSide: BorderSide(
      width: 2.0,
      color: AppColors.secondary,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          counter: AppTextBody(
            textBody: counter,
            color: AppColors.secondary,
          ),
          hintText: hintPass,
          suffixText: 'Show',
          disabledBorder: inputBorder,
          enabled: true,
          enabledBorder: inputBorder,
          border: inputBorder),
    );
  }
}
