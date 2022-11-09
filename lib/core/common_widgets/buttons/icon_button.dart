import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../exports.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton(
      {Key? key,
      this.onpressed,
      required this.icon,
      this.color = AppColors.secondary,
      this.size = 20.0})
      : super(key: key);
  final Function()? onpressed;
  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        icon,
        color: color,
        size: size.sp,
      ),
    );
  }
}
