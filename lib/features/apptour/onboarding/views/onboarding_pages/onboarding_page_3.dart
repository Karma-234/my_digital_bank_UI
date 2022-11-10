import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kml_digital_bank/core/common_widgets/buttons/app_button.dart';
import 'package:kml_digital_bank/features/apptour/landing_page/views/landing_page.dart';

import '../reusable_widgets/onboarding_scaffold.dart';
import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingSkeleton(
      backgroundImage: 'bgtrans',
      foreImg: 'onbimg3',
      alignForeImg: Alignment.center,
      alignBgImg: Alignment.bottomRight,
      headerTxt: 'Enjoy peace of mind and financial success',
      bodyTxt:
          'You can track your progress and achievements in a special section',
      btmImg: 'onbg3',
      dotPosition: 2.0,
      button: AppButton(
        onPressed: () {
          Get.to(() => ExistingUserView());
        },
        text: 'Get started',
      ),
    );
  }
}
