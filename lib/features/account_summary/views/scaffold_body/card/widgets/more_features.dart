import 'package:flutter/material.dart';

import '../../../../../../core/exports.dart';

class MoreCardFeatures extends StatelessWidget {
  const MoreCardFeatures({
    Key? key,
    this.onTap,
    this.onTap2,
    this.onTap3,
  }) : super(key: key);
  final Function()? onTap;
  final Function()? onTap2;
  final Function()? onTap3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.key,
                color: AppColors.secondary,
              ),
              title: const AppTextBody(
                textBody: 'Set spending limits',
                fontSize: 12.0,
                height: 15.0,
              ),
              onTap: onTap,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.light,
                color: AppColors.secondary,
              ),
              title: const AppTextBody(
                textBody: 'Freeze card',
                fontSize: 12.0,
                height: 15.0,
              ),
              onTap: onTap2,
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.shield_moon_outlined,
                color: AppColors.secondary,
              ),
              title: const AppTextBody(
                textBody: 'Security settings',
                fontSize: 12.0,
                height: 15.0,
              ),
              onTap: onTap3,
            ),
          ],
        ),
      ),
    );
  }
}
