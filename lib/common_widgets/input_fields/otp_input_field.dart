import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/app_colors.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({
    Key? key,
    this.controller,
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.0,
      child: TextFormField(
        validator: validator,
        controller: controller,
        style: const TextStyle(color: AppColors.secondary, fontSize: 24.0),
        obscureText: true,
        onChanged: (value) {
          FocusScope.of(context).nextFocus();
        },
        enabled: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          enabled: true,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondary, width: 2.0),
          ),
          hintText: '0',
        ),
      ),
    );
  }
}
