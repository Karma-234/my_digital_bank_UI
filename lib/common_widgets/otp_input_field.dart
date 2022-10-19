import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/app_colors.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.0,
      child: TextFormField(
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
