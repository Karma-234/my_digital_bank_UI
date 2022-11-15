import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../features/exports.dart';
import '../exports.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const InfoInputField(
                hintText: 'Matthew Brown',
                counterText: 'Fullname',
                prefixIcon: null),
            Gap(90.0.h),
            const InfoInputField(
                hintText: 'E.g matthew@gmail.com',
                counterText: 'Email',
                prefixIcon: null),
            Gap(96.12.h),
          ],
        ),
      ),
    );
  }
}
