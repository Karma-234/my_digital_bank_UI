import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonBackIcon extends StatelessWidget {
  const CommonBackIcon({Key? key, required this.iconColor}) : super(key: key);
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.topLeft,
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        size: 24.0.sp,
        Icons.arrow_back_ios,
        color: iconColor,
      ),
    );
  }
}
