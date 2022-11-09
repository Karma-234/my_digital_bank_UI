import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_digital_bank/core/exports.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Expanded(
        child: ListView(
          children: [
            Gap(153.0.h),
            const AppTextHeader(header: 'New Password'),
            Gap(42.0.h),
            const NewPasswordFormField(
              hintPass: 'New Password',
              counter: 'New Password',
              suffixText: 'Show',
            ),
            Gap(87.0.h),
            const NewPasswordFormField(
              hintPass: 'Confirm Password',
              counter: 'Confrim password',
              suffixText: 'Show',
            ),
            Gap(88.0.h),
          ],
        ),
      ),
    );
  }
}
