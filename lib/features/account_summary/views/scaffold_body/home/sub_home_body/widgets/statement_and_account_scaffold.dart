import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/exports.dart';

class StatementAndAccountSacffold extends StatefulWidget {
  StatementAndAccountSacffold({
    Key? key,
    required this.preContainer,
    required this.inContainer,
    this.secondBorder = false,
    this.showtitle = false,
    this.title = '',
    this.inConAlign = CrossAxisAlignment.start,
  }) : super(key: key);

  List<Widget> preContainer;
  List<Widget> inContainer;
  bool secondBorder;
  bool showtitle;
  final String title;
  final CrossAxisAlignment inConAlign;

  @override
  State<StatementAndAccountSacffold> createState() =>
      _StatementAndAccountSacffoldState();
}

class _StatementAndAccountSacffoldState
    extends State<StatementAndAccountSacffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.secondary,
        leading: Container(
          margin: const EdgeInsets.only(left: 15.0),
          child: const CommonBackIcon(
            iconColor: AppColors.primary,
          ),
        ),
        title: Builder(
          builder: (context) {
            if (widget.showtitle == true) {
              return AppTextBody(
                textBody: widget.title,
                color: AppColors.primary,
              );
            }
            return const AppTextBody(textBody: '');
          },
        ),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bg3'.png),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...widget.preContainer,
            Gap(15.0.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: 23.0.w,
                  right: 23.0.w,
                  top: 18.0.h,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: widget.secondBorder
                      ? const BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                        )
                      : BorderRadius.only(
                          topRight: Radius.circular(30.0.sp),
                          topLeft: Radius.circular(30.0.sp),
                        ),
                  color: AppColors.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [...widget.inContainer],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
