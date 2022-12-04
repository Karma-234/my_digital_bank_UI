import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/savings_target/controller/savings_target_controller.dart';

class TargetHeader extends StatelessWidget {
  const TargetHeader({Key? key, required this.ctrl}) : super(key: key);
  final SavingsTargetController ctrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          '${(ctrl.targets[ctrl.target.value])}'.png,
          alignment: Alignment.center,
        ),
        Gap(18.0.h),
        AppTextBody(
            textBody: ctrl.targets[ctrl.target.value].toString().toUpperCase()),
      ],
    );
  }
}
