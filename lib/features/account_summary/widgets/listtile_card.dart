import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/exports.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard(
      {Key? key,
      this.onPressed,
      required this.img,
      this.bgColor = AppColors.primary,
      required this.text})
      : super(key: key);
  final Function()? onPressed;
  final Color bgColor;

  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(235.08.w, 70.23.h),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0.r),
          ),
        ),
      ),
      onPressed: onPressed,
      child: ListTile(
        leading: SvgPicture.asset(
          img.svg,
        ),
        title: AppTextBody(
          textBody: text,
          height: 18.0,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.black,
          size: 10.0,
        ),
      ),
    );
  }
}
