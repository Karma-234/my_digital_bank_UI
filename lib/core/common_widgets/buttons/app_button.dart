import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../exports.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.onPressed,
    this.text = '',
    this.btnheight = 48.0,
    this.btnwidth = 301.0,
    this.txtcolor = AppColors.secondary,
    this.txtheight = 20.0,
    this.txtsize = 16.0,
    this.btncolor = AppColors.buttonColor2,
  }) : super(key: key);
  final Function()? onPressed;
  final String text;
  final double btnheight;
  final double btnwidth;
  final Color txtcolor;
  final double txtheight;
  final double txtsize;
  final Color btncolor;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: btnheight.h,
        width: btnwidth.w,
        decoration: BoxDecoration(
          color: btncolor,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0.r),
          ),
        ),
        child: Center(
          child: AppTextBody(
            textBody: text,
            color: txtcolor,
            fontSize: txtsize.sp,
            height: txtheight.sp,
          ),
        ),
      ),
    ));
  }
}

class SkipButton2 extends StatelessWidget {
  const SkipButton2(
      {Key? key,
      this.txtColor = AppColors.textColor,
      this.onTap,
      this.txt = 'Skip for now'})
      : super(key: key);
  final Color txtColor;
  final Function()? onTap;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: AppTextBody(
          textBody: txt,
          color: txtColor,
        ),
      ),
    );
  }
}
