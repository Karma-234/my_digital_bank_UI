import '../reusable_widgets/onboarding_scaffold.dart';
import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingSkeleton(
      backgroundImage: 'bgtrans',
      alignBgImg: Alignment.bottomCenter,
      alignForeImg: Alignment.bottomRight,
      foreImg: 'onbimg2',
      headerTxt: 'Fund your account and make safe payments',
      bodyTxt:
          'Safely send make bills payment and transfer money to friends and family',
      btmImg: 'onbg2',
      dotPosition: 1.0,
    );
  }
}
