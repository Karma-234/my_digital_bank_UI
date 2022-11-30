import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/features/exports.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: false,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'KML Digital Bank',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            dividerTheme: const DividerThemeData(
              thickness: 0.5,
              color: AppColors.grey2,
            ),
          ),
          home: const SplashPage(),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.sp),
            child: child!,
          ),
        );
      },
    );
  }
}
