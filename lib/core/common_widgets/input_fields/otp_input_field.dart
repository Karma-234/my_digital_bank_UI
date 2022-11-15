import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../app_colors/app_colors.dart';

class OTPinInput extends StatelessWidget {
  const OTPinInput({Key? key, this.length = 6, this.onComp, this.otpctrl})
      : super(key: key);
  final int length;
  final Function(String)? onComp;
  final TextEditingController? otpctrl;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: otpctrl,
      onCompleted: onComp,
      onSubmitted: onComp,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      length: length,
      obscureText: true,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      defaultPinTheme: PinTheme(
        textStyle: TextStyle(color: AppColors.secondary, fontSize: 30.0.sp),
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
    );
  }
}
