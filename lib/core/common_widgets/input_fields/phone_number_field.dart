import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../exports.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    Key? key,
    required this.numberCounterText,
    this.controller,
    this.validator,
  }) : super(key: key);
  final String numberCounterText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        hintText: '9908865444',
        hintStyle: GoogleFonts.inter(
          fontSize: 18.0,
          color: AppColors.prefixTextColor,
        ),
        icon: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('flag'.png),
              height: 26.0,
              width: 26.0,
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: AppColors.secondary,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: Size(43.w, 28.h),
                side: const BorderSide(color: AppColors.secondary),
              ),
              onPressed: () {},
              child: Text(
                '+234',
                style: GoogleFonts.inter(
                  fontSize: 12.0,
                  color: AppColors.prefixTextColor,
                ),
              ),
            )
          ],
        ),
        counterText: numberCounterText,
        counterStyle:
            GoogleFonts.inter(fontSize: 16.0, color: AppColors.secondary),
        enabled: true,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: AppColors.secondary,
          ),
        ),
      ),
    );
  }
}
