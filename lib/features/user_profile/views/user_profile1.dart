import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/controller/user_info-controller.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/statement_and_account_scaffold.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home/sub_home_body/widgets/transaction_tiles.dart';
import 'package:kml_digital_bank/features/apptour/password_reset/views/new_password_view.dart';
import 'package:kml_digital_bank/features/apptour/password_reset/views/phone_number_view.dart';

class UserProfile1 extends StatefulWidget {
  const UserProfile1({super.key});

  @override
  State<UserProfile1> createState() => _UserProfile1State();
}

class _UserProfile1State extends State<UserProfile1>
    with SingleTickerProviderStateMixin {
  final ctrl = Get.put(UserInfoController());

  late final ctrl2 = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      preContainer: [
        ProfileHeader(ctrl: ctrl),
        Gap(65.0.h),
      ],
      inContainer: [
        TabBar(
          controller: ctrl2,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 4.0.sp,
            ),
          ),
          labelColor: AppColors.secondary,
          labelStyle: TextStyle(fontSize: 14.0.sp, height: 14.0.sp / 24.0.sp),
          unselectedLabelColor: AppColors.grey2,
          tabs: const [
            Tab(
              text: 'Basic Info',
            ),
            Tab(
              text: 'Compliance',
            ),
            Tab(
              text: 'Preferences',
            ),
          ],
        ),
        Expanded(
          child: Container(
            height: 500.0.h,
            width: double.maxFinite,
            child: TabBarView(controller: ctrl2, children: [
              BasicInfo(ctrl: ctrl),
              Compliance(),
              Preferences(),
            ]),
          ),
        )
      ],
    );
  }
}

class Preferences extends StatelessWidget {
  const Preferences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(40.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.lockOpen,
          title: 'Change password',
          arrow: true,
          onTap: () {
            Get.to(() => PhoneNumberView());
          },
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.lock,
          title: 'Change pin',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.codeCompare,
          title: 'Transfer device',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.envelope,
          title: 'Email verification',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
      ],
    );
  }
}

class Compliance extends StatelessWidget {
  const Compliance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(40.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.locationPinLock,
          title: 'Change address',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.idCardClip,
          title: 'Upload proof of residence',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.idCard,
          title: 'Upload ID card',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
        Gap(26.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.userCheck,
          title: 'Choose next of kin',
          arrow: true,
          onTap: () {},
        ),
        const Divider(),
      ],
    );
  }
}

class BasicInfo extends StatelessWidget {
  const BasicInfo({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final UserInfoController ctrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.user,
          title: ctrl.nametxt.value,
        ),
        const Divider(),
        Gap(41.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.envelope,
          title: ctrl.emailtxt.value,
        ),
        const Divider(),
        Gap(41.0.h),
        ProfileTiles(
          icon: FontAwesomeIcons.phone,
          title: ctrl.phonetxt.value,
        ),
        const Divider(),
      ],
    );
  }
}

class ProfileTiles extends StatelessWidget {
  const ProfileTiles({
    Key? key,
    this.title = '',
    this.icon,
    this.onTap,
    this.arrow = false,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final Function()? onTap;
  final bool arrow;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      onTap: onTap,
      leading: Icon(
        icon,
        color: AppColors.secondary,
      ),
      title: AppTextBody(
        textBody: title,
        fontSize: 14.0,
        height: 18.0,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: arrow ? AppColors.grey : Colors.transparent,
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final UserInfoController ctrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(32.0.w),
        CircleAvatar(
          radius: 42.0.r,
          backgroundImage: ctrl.imgctrl.selectedImage == null
              ? Image.asset('avatar'.png).image
              : Image.file(ctrl.imgctrl.selectedImage!).image,
        ),
        Gap(11.0.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppTextBody(
              textBody: 'Welcome,',
              color: AppColors.txt2,
            ),
            AppTextHeader(
              header: ctrl.nametxt.value,
              color: AppColors.primary,
            ),
            Gap(11.0.h),
            const AppTextBody(
              textBody: 'Compliance Level 1',
              color: AppColors.txt2,
            ),
          ],
        ),
      ],
    );
  }
}
