import 'package:flutter/material.dart';

import '../../app_colors/app_colors.dart';

class NewPasswordFormField extends StatelessWidget {
  const NewPasswordFormField({
    Key? key,
    required this.hintPass,
    this.controller,
    this.validator,
  }) : super(key: key);
  final String hintPass;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
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
