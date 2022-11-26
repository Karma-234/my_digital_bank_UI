import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/exports.dart';
import '../../exports.dart';
import 'scaffold_body/home_body/sub_home_body/view/home_history_view.dart';

class AccountSummaryView extends StatefulWidget {
  const AccountSummaryView({super.key});

  @override
  State<AccountSummaryView> createState() => _HomeViewState();
}

class _HomeViewState extends State<AccountSummaryView> {
  int myIndex = 0;
  List<Widget> indexPage = [
    HomeBody(),
    const Center(
      child: AppTextHeader(header: 'Cards'),
    ),
    const Center(
      child: AppTextHeader(header: 'Messaging'),
    ),
    const Center(
      child: AppTextHeader(header: 'More'),
    ),
  ];
  final style = TextStyle(fontSize: 10.0.sp);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor2,
        bottomOpacity: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          const AppBarIconButton(
            icon: FontAwesomeIcons.bell,
          ),
          AppBarIconButton(
            icon: Icons.settings,
            onpressed: () => Get.to(() => const HomeHistoryView()),
          ),
          AppBarIconButton(
            icon: FontAwesomeIcons.powerOff,
            onpressed: () => Get.offAll(() => const ExistingUserView()),
          ),
        ],
      ),
      backgroundColor: AppColors.scaffoldColor2,
      bottomNavigationBar: BtmNavBar(
        currentIndex: myIndex,
        onTap: (p0) {
          setState(() {
            myIndex = p0;
          });
        },
      ),
      body: indexPage[myIndex],
    );
  }
}
