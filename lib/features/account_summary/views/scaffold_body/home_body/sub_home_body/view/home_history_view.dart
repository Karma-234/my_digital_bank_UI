import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/core/exports.dart';
import 'package:kml_digital_bank/features/account_summary/views/scaffold_body/home_body/sub_home_body/view/history_home_view.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/app_calendar.dart';
import '../widgets/search_field.dart';
import '../widgets/selector.dart';
import '../widgets/statement_and_account_scaffold.dart';
import '../widgets/transaction_tiles.dart';

class HomeHistoryView extends StatefulWidget {
  const HomeHistoryView({super.key});

  @override
  State<HomeHistoryView> createState() => _HomeHistoryViewState();
}

class _HomeHistoryViewState extends State<HomeHistoryView> {
  bool showSearch = true;
  bool showCalendar = false;

  @override
  Widget build(BuildContext context) {
    return StatementAndAccountSacffold(
      preContainer: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: AppTextHeader(
            header: showCalendar ? 'Pick a date' : 'Transaction Statement',
            color: AppColors.primary,
          ),
        )
      ],
      inContainer: [
        HeaderWidget(
          children: [
            Selector(
              icon: Icons.arrow_drop_down_outlined,
              onTap: () {
                Get.to(
                  () => const HomeView2(),
                );
              },
            ),
            Gap(214.0.w),
            Selector(
              onTap: () {
                setState(() {
                  showSearch = !showSearch;
                  showCalendar = false;
                });
              },
            ),
            Gap(23.0.w),
            Selector(
              icon: Icons.calendar_month_sharp,
              onTap: () {
                setState(() {
                  showCalendar = !showCalendar;
                  showSearch = false;
                });
              },
            )
          ],
        ),
        Gap(20.0.h),
        Builder(
          builder: (context) {
            if (showSearch == true) {
              return const SearchField();
            } else {
              return const Divider(
                color: Colors.black,
                thickness: 0.4,
              );
            }
          },
        ),
        Gap(15.0.h),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Builder(builder: (context) {
              if (showCalendar == true) {
                return const AppCalendar();
              } else {
                return const Transactions();
              }
            }),
          ),
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  HeaderWidget({Key? key, this.children = const []}) : super(key: key);
  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children,
    );
  }
}
