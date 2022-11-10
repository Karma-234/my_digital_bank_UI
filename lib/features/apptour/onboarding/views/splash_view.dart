import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/walkthrough_view.dart';

import '../../../../core/exports.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.off(() => OnboardingView()),
    );
    return Material(
      color: AppColors.secondary,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('bg3'.png), fit: BoxFit.fill),
        ),
        child: Center(
          child: Image.asset(
            'logo'.png,
            width: 148,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
