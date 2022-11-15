import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../exports.dart';

// ignore: must_be_immutable
class PhoneNumberField extends StatefulWidget {
  PhoneNumberField({
    Key? key,
    this.fieldctrl,
    this.phnTxt = '234',
    this.validator,
  }) : super(key: key);

  final TextEditingController? fieldctrl;
  String phnTxt;
  final String? Function(String?)? validator;

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return InfoInputField(
      controller: widget.fieldctrl,
      validator: widget.validator,
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CountryPickerDropdown(
            iconEnabledColor: AppColors.secondary,
            initialValue: 'NG',
            itemBuilder: (country) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CountryPickerUtils.getDefaultFlagImage(country),
                ],
              );
            },
            onValuePicked: (value) {
              setState(() {
                widget.phnTxt = value.phoneCode;
              });
            },
          ),
          Container(
            height: 28.0.h,
            width: 43.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0.r)),
              border: Border.all(
                width: 1.0.sp,
                color: AppColors.secondary.withOpacity(0.5),
              ),
            ),
            child: Center(
              child: AppTextBody(
                textBody: widget.phnTxt,
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
      hintText: '8099990000',
      counterText: 'Phone number',
      inputFormat: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
    );
  }
}
