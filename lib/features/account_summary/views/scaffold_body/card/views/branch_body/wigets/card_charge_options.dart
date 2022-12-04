import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/exports.dart';

class ChargeCardOption1 extends StatelessWidget {
  const ChargeCardOption1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IntervalButton(
          onPressed: () {},
          title: 'Daily',
          color: AppColors.secondary,
        ),
        IntervalButton(
          onPressed: () {},
          title: 'Weekly',
          color: AppColors.green2,
        ),
        IntervalButton(
          onPressed: () {},
          title: 'Monthly',
          color: AppColors.secondary,
        ),
      ],
    );
  }
}

class ChargeCardOption2 extends StatelessWidget {
  const ChargeCardOption2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntervalButton(
            onPressed: () {},
            title: '₦500',
            color: AppColors.secondary,
          ),
          IntervalButton(
            onPressed: () {},
            title: '₦1,000',
            color: AppColors.green2,
          ),
          IntervalButton(
            onPressed: () {},
            title: '₦2,000',
            color: AppColors.secondary,
          ),
          IntervalButton(
            onPressed: () {},
            title: 'Custom',
            color: AppColors.green4,
          ),
        ],
      ),
    );
  }
}

class IntervalButton extends StatelessWidget {
  const IntervalButton(
      {Key? key,
      this.onPressed,
      required this.title,
      required this.color,
      this.radius = 36.5})
      : super(key: key);
  final Function()? onPressed;
  final String title;
  final Color color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: CircleAvatar(
        radius: radius.r,
        backgroundColor: color.withOpacity(0.2),
        child: AppTextBody(
          textBody: title,
          color: AppColors.black,
          fontSize: 14.0,
          height: 18.0,
        ),
      ),
    );
  }
}
