import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/common_widgets/text_widgets/text_header_and_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int myIndex = 0;
  List<Widget> indexPage = const [
    Center(
      child: AppTextHeader(header: 'Home'),
    ),
    Center(
      child: AppTextHeader(header: 'Cards'),
    ),
    Center(
      child: AppTextHeader(header: 'Messaging'),
    ),
    Center(
      child: AppTextHeader(header: 'More'),
    ),
  ];
  final style = TextStyle(fontSize: 10.0.sp);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: AppColors.buttonColor2),
        currentIndex: myIndex,
        backgroundColor: AppColors.secondary,
        onTap: (value) {
          setState(() {
            myIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: AppColors.secondary,
              icon: Icon(
                Icons.home,
                color: AppColors.buttonColor2,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.secondary,
              icon: Icon(
                Icons.credit_card,
                color: AppColors.buttonColor2,
              ),
              label: 'Cards'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.secondary,
              icon: Icon(
                FontAwesomeIcons.paperPlane,
                color: AppColors.buttonColor2,
              ),
              label: 'Messaging'),
          BottomNavigationBarItem(
              backgroundColor: AppColors.secondary,
              icon: Icon(
                Icons.more_horiz,
                color: AppColors.buttonColor2,
              ),
              label: 'More'),
        ],
      ),
      body: indexPage[myIndex],
    );
  }
}
