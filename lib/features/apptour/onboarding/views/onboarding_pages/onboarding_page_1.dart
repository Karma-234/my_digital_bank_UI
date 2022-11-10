import 'package:flutter/material.dart';

import '../reusable_widgets/onboarding_scaffold.dart';
import '../reusable_widgets/skip_button.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingSkeleton(
      backgroundImage: 'cutbg',
      foreImg: 'onbimg1',
      headerTxt: 'Securely setup your financial goals',
      bodyTxt: 'Our smart finance app will keep your records, stats and track',
      btmImg: 'onbg1',
      dotPosition: 0.0,
      button: SkipButton(),
    );
  }
}
