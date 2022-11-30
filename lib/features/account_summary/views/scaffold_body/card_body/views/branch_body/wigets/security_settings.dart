import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../../core/exports.dart';
import '../../../widgets/app_switch_tile.dart';

class SecuritySettings extends StatelessWidget {
  const SecuritySettings({
    Key? key,
    required this.web,
    required this.atmPos,
    required this.ngn,
    required this.inter,
    this.onchangedWeb,
    this.onchangedatmPos,
    this.onchangedinter,
    this.onchangedngn,
  }) : super(key: key);

  final bool web;
  final bool atmPos;
  final bool ngn;
  final bool inter;
  final dynamic Function(bool)? onchangedWeb;
  final dynamic Function(bool)? onchangedatmPos;
  final dynamic Function(bool)? onchangedngn;
  final dynamic Function(bool)? onchangedinter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSwitchTile(
          value: web,
          title: 'Web',
          onchanged: onchangedWeb,
        ),
        AppSwitchTile(
          value: atmPos,
          title: 'ATM/POS',
          onchanged: onchangedatmPos,
        ),
        Gap(28.0.h),
        const AppTextBody(
          textBody: 'Card Control by Countries',
          fontSize: 20.0,
        ),
        const Divider(),
        AppSwitchTile(
          value: ngn,
          title: 'Nigeria',
          onchanged: onchangedngn,
        ),
        AppSwitchTile(
          value: inter,
          title: 'International',
          onchanged: onchangedinter,
        ),
      ],
    );
  }
}
