import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kml_digital_bank/core/exports.dart';

class TransferOptionsCard extends StatelessWidget {
  const TransferOptionsCard(
      {Key? key,
      this.onTap,
      required this.imageString,
      required this.color,
      required this.title})
      : super(key: key);
  final Function()? onTap;

  final String imageString;
  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 5,
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(top: 10.0.h),
        shadowColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        elevation: 6.0,
        child: Container(
          padding: EdgeInsets.only(
            top: 10.0.h,
          ),
          height: 107.0.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: color!.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Image.asset(
                imageString.png,
                fit: BoxFit.fitHeight,
                width: 185.51.sp,
                height: 164.43.sp,
                alignment: Alignment.bottomLeft,
              ),
              AppTextBody(
                textBody: title,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
