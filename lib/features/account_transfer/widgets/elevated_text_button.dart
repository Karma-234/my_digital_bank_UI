import 'package:flutter/material.dart';

import '../../../core/exports.dart';

class ElevatedTextButton extends StatelessWidget {
  const ElevatedTextButton(
      {Key? key,
      this.onPressed,
      this.text = '',
      this.btnColor = AppColors.primary,
      this.txtColor = AppColors.secondary})
      : super(key: key);
  final Function()? onPressed;
  final String text;
  final Color btnColor;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: btnColor,
          elevation: 7.0),
      child: Center(
        child: AppTextBody(
          textBody: text,
          color: AppColors.secondary,
        ),
      ),
    );
  }
}
