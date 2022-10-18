import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class NewPasswordFormField extends StatelessWidget {
  const NewPasswordFormField({Key? key, required this.hintPass})
      : super(key: key);
  final String hintPass;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintPass,
        suffixText: 'Show',
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: AppColors.secondary,
          ),
        ),
        enabled: true,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: AppColors.secondary,
          ),
        ),
      ),
    );
  }
}
