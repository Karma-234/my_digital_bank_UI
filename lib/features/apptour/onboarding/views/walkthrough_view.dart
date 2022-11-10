import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kml_digital_bank/core/app_colors/app_colors.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/onboarding_pages/onboarding_page_1.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/onboarding_pages/onboarding_page_2.dart';
import 'package:kml_digital_bank/features/apptour/onboarding/views/onboarding_pages/onboarding_page_3.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor2,
      body: PageView(
        children: const [
          OnboardingPage1(),
          OnboardingPage2(),
          OnboardingPage3()
        ],
      ),
    );
  }
}
