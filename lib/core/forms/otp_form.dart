import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:pinput/pinput.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: Pinput(
          length: 6,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          defaultPinTheme: PinTheme(
            width: 38.0.w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: AppColors.secondary,
                    width: 1.0.sp,
                    style: BorderStyle.solid),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
