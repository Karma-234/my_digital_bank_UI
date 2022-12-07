import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/exports.dart';

class UserInfoScaffold extends StatelessWidget {
  const UserInfoScaffold(
      {Key? key,
      this.formkey,
      this.showBkIcon = true,
      this.headerTxt = '',
      this.bodyTxt = '',
      this.colAlign = CrossAxisAlignment.start,
      this.bgImg,
      this.showImg = true,
      this.imgAlgn = Alignment.topLeft,
      this.btns = const [],
      this.oneBtn = true,
      this.twoBtns = false,
      this.children = const [],
      this.alignText = TextAlign.left,
      this.showPrevScaffold = false,
      this.txtHeadcolor = AppColors.secondary,
      this.txtBodyColor = AppColors.bvnColor})
      : super(key: key);

  final Key? formkey;

  final bool showBkIcon;
  final String headerTxt;
  final String bodyTxt;
  final CrossAxisAlignment colAlign;
  final String? bgImg;
  final bool showImg;
  final AlignmentGeometry imgAlgn;
  final bool oneBtn;
  final bool twoBtns;
  final List<Widget> btns;
  final List<Widget> children;
  final TextAlign? alignText;
  final bool showPrevScaffold;
  final Color txtHeadcolor;
  final Color txtBodyColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: showPrevScaffold
            ? AppColors.secondary
            : Colors.transparent.withOpacity(0),
        leading: showBkIcon
            ? Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: CommonBackIcon(
                  iconColor: showPrevScaffold
                      ? AppColors.primary
                      : AppColors.secondary,
                ),
              )
            : null,
      ),
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: showPrevScaffold ? AppColors.secondary : null,
          image: showPrevScaffold
              ? DecorationImage(
                  image: AssetImage(
                    'bg3'.png,
                  ),
                  fit: BoxFit.fill)
              : null,
        ),
        child: Column(
          crossAxisAlignment: colAlign,
          children: [
            showImg
                ? Image(
                    image: AssetImage(
                      bgImg!.png,
                    ),
                    height: 84.3.h,
                    width: 320.0.w,
                    alignment: imgAlgn,
                  )
                : Gap(66.0.h),
            Form(
              key: formkey,
              child: Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.0.w),
                  child: ListView(
                    children: [
                      Gap(5.04.h),
                      AppTextHeader(
                        header: headerTxt,
                        color: txtHeadcolor,
                        textAlign: alignText,
                      ),
                      Gap(11.h),
                      AppTextBody(
                        textBody: bodyTxt,
                        color: txtBodyColor,
                        alignment: alignText,
                      ),
                      showPrevScaffold ? Gap(16.0.h) : Gap(55.0.h),
                      ...children,
                    ],
                  ),
                ),
              ),
            ),
            ...btns,
            Gap(32.0.h),
          ],
        ),
      ),
    );
  }
}
