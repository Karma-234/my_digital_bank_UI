import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kml_digital_bank/core/exports.dart';

import '../../../../../../controller/user_info-controller.dart';

class CardBodyFrame extends StatelessWidget {
  const CardBodyFrame({
    Key? key,
    this.precon = const [],
    this.inCon = const [],
    this.showSlider = true,
  }) : super(key: key);

  final List<Widget> precon;
  final List<Widget> inCon;
  final bool showSlider;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'capitallogo'.png,
            ),
            alignment: Alignment.topCenter),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...precon,
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0.r),
                    topRight: Radius.circular(30.0.r),
                  ),
                  color: AppColors.primary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...inCon,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
